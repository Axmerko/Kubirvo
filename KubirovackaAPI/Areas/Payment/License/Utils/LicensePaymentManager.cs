using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.Areas.Payment.License.Enums;
using KubirovackaAPI.Areas.Payment.License.Models.Database;
using KubirovackaAPI.Areas.Payment.License.Models.DTO;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Extensions;
using KubirovackaAPI.Models;
using KubirovackaAPI.Utilities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Localization;
using Minio.Exceptions;
using Newtonsoft.Json;
using RabbitMQ.Client;
using GoPayPayment = GoPay.Model.Payments.Payment;

namespace KubirovackaAPI.Areas.Payment.License.Utils
{
    public class LicensePaymentManager : ILicensePaymentManager
    {
        private readonly IEmailingUtils _emailingUtils;
        private readonly IStringLocalizer _localizer;
        private readonly ILicenseManager _licenseManager;
        private readonly IConfiguration _configuration;
        private readonly IGooglePlayUtil _googlePlayUtil;
        private readonly KubirovackaContext _context;

        public LicensePaymentManager(KubirovackaContext context,IEmailingUtils emailingUtils, IStringLocalizerFactory factory,
            ILicenseManager licenseManager, IConfiguration configuration, IGooglePlayUtil googlePlayUtil)
        {
            _context = context;
            _emailingUtils = emailingUtils;
            _localizer = LocalizationUtil.getLocalizer(factory);
            _licenseManager = licenseManager;
            _configuration = configuration;
            _googlePlayUtil = googlePlayUtil;
        }

        public async Task<GoPayPayment.SessionState?> ProcessGoPayLicensePayment(LicensePayment dbPayment, GoPayPayment payment)
        {
            if (dbPayment.State == payment.State) return payment.State; // Pozor důležité! Bez tohohle by se license prodloužila při každém volání této akce

            dbPayment.State = payment.State;

            if (payment.State == GoPayPayment.SessionState.PAID)
            {
                dbPayment.PaidAt = DateTime.UtcNow;
                foreach (var item in dbPayment.LicensePaymentItems)
                {
                    Guid licenseId;
                    Main.User.Models.Database.License license;

                    if (item.LicenseId == null)
                    {
                        license = await _licenseManager.GenerateLicense(null, DateTime.UtcNow, dbPayment.Customer.UserGroups
                            .First(ug => ug.IsHomeGroup).GroupId);
                    }
                    else
                    {
                        licenseId = (Guid) item.LicenseId;
                        license = await _context.Licenses.Include(l => l.User).FirstAsync(l => l.Id == licenseId);
                        if (license.ExpirationDate < DateTime.UtcNow)
                        {
                            license.ExpirationDate = DateTime.UtcNow;
                        }
                    }

                    switch (item.LicenseProductType)
                    {
                        case LicenseProductType.KubPrem1Month:
                            license.ExpirationDate = license.ExpirationDate.AddMonths(1);
                            license.LastPurchasePeriod = LicenseProductType.KubPrem1Month;
                            license.NotifyExpirationAt = DateTime.UtcNow.AddDays(20);
                            break;
                        case LicenseProductType.KubPrem1Year:
                            license.ExpirationDate = license.ExpirationDate.AddYears(1);
                            license.LastPurchasePeriod = LicenseProductType.KubPrem1Year;
                            license.NotifyExpirationAt = DateTime.UtcNow.AddMonths(11);
                            break;
                    }

                    if (license.User != null)
                    {
                        license.User.JwtVersion++;
                    }
                    else
                    {
                        dbPayment.Customer.JwtVersion++;
                    }
                }

                await SendLicenseActivatedEmail($"{payment.Payer.Contact.FirstName} {payment.Payer.Contact.LastName}", payment.Payer.Contact.Email);
                await GenerateInvoice(dbPayment);
            }
            else
            {
                dbPayment.State = payment.State;
            }

            await _context.SaveChangesAsync();
            return payment.State;
        }

        public async Task ProcessGooglePlayLicensePayment(GooglePlayNotification message)
        {
            var notificationType = (GooglePlayNotificationType) message.SubscriptionNotification.NotificationType;
            var subscriptionData = await _googlePlayUtil.GetSubscriptionPurchase(message.SubscriptionNotification.PurchaseToken);
    
            var isInitialPurchase = notificationType == GooglePlayNotificationType.SubscriptionPurchased;
            var isRenewal = notificationType == GooglePlayNotificationType.SubscriptionRenewed;
    
            
            await ProcessMobileStoreNotification(message.SubscriptionNotification.PurchaseToken, isInitialPurchase, isRenewal, subscriptionData.SubscriptionState);
        }

        public async Task ProcessAppleNotificationAsync(AppleTransactionInfo transactionInfo, string notificationSubtype)
        {
            var isInitialPurchase = notificationSubtype == "INITIAL_BUY";
            var isRenewal = notificationSubtype == "RENEWAL";
            
            await ProcessMobileStoreNotification(transactionInfo.OriginalTransactionId, isInitialPurchase, isRenewal, notificationSubtype);
        }
        
        public async Task<LicensePayment> CreateMobileStoreLicensePayment(MobileStoreLicensePaymentDTO paymentDto, Guid userId, LicensePaymentProvider provider)
        {
            var maxLicensePaymentId = await _context.LicensePayments.MaxAsync(lp => lp.Id);
            var licensePaymentId = maxLicensePaymentId + 1;

            var licensePayment = new LicensePayment
            {
                Id = licensePaymentId,
                Currency = GoPay.Common.Currency.CZK,
                State = GoPayPayment.SessionState.CREATED,
                CustomerId = userId,
                OrderNumber = Guid.NewGuid(),
                OrderedAt = DateTimeOffset.UtcNow,
                Provider = provider,
                PurchaseId = paymentDto.PurchaseId,
                CompanyPurchase = paymentDto.CompanyPurchase,
                CompanyName = paymentDto.CompanyName,
                CompanyCountry = paymentDto.CompanyCountry,
                CompanyCity = paymentDto.CompanyCity,
                CompanyStreetAndNumber = paymentDto.CompanyStreetAndNumber,
                CompanyZipCode = paymentDto.CompanyZipCode,
                TaxId = paymentDto.TaxId,
                VatNum = paymentDto.VatNum,
            };

            _context.LicensePayments.Add(licensePayment);

            foreach (var oi in paymentDto.OrderItems)
            {
                // take license id from DTO if present, otherwise use ID of the license assigned to the user
                var licenseId = oi.LicenseId ?? await _context.Licenses.Where(e => e.UserId == userId).Select(e => e.Id).FirstAsync();
                _context.LicensePaymentItems.Add(new LicensePaymentItem
                {
                    LicenseId = licenseId,
                    LicensePaymentId = licensePaymentId,
                    LicenseProductType = oi.LicenseProductType
                });
            }

            await _context.SaveChangesAsync();

            var customer = await _context.Users.FindAsync(userId);
            if (customer != null)
            {
                 await _emailingUtils.SendNoreplyEmail(new Dictionary<string, string> {{customer.FirstName + " " + customer.LastName, customer.Email}},
                    _localizer["Potvrzení objednávky"], new DefaultEmail(_localizer["Děkujeme za vaši objednávku"],
                        $"<p>{_localizer["Vaše licence budou aktivovány/prodlouženy, jakmile obdržíme vaši platbu."]}</p>" +
                        $"<p>{_localizer["Obchodní podmínky naleznete na"]} <a href='https://www.kubirovacka.cz/cs/businessConditions'>" +
                        $"https://www.kubirovacka.cz/cs/businessConditions</a>.</p>"));
            }
           
            var licensePaymentResult = await _context.LicensePayments
                .Include(lp => lp.LicensePaymentItems)
                .Include(lp => lp.Customer)
                .Include(lp => lp.Customer.UserGroups)
                .FirstOrDefaultAsync(lp => lp.Id == licensePaymentId);
                
            return licensePaymentResult;
        }

        private async Task ProcessMobileStoreNotification(string transactionId, bool isInitialPurchase, bool isRenewal, string subscriptionState)
        {
            var latestPayment = await _context.LicensePayments
                .Where(e => e.PurchaseId == transactionId)
                .Include(e => e.LicensePaymentItems)
                .Include(lp => lp.Customer)
                .OrderByDescending(e => e.OrderedAt)
                .FirstOrDefaultAsync();
            if (latestPayment == null) throw new ObjectNotFoundException("License payment with this purchase ID not found!");

            var license = await _context.Licenses
                .Include(l => l.User)
                .FirstOrDefaultAsync(l => l.Id == latestPayment.LicensePaymentItems.First().LicenseId);
            if (license == null) throw new ObjectNotFoundException("License not found!");
            
            license.NotifyExpirationAt = null; // we don't want notifications for mobile store licenses that are automatically renewed
            if (license.ExpirationDate < DateTimeOffset.UtcNow)
            {
                license.ExpirationDate = DateTimeOffset.UtcNow;
            }

            if (isInitialPurchase)
            {
                latestPayment.PaidAt = DateTimeOffset.UtcNow;
                latestPayment.State = GoPayPayment.SessionState.PAID;
                await SendLicenseActivatedEmail($"{latestPayment.Customer.FirstName} {latestPayment.Customer.LastName}", latestPayment.Customer.Email);
                await GenerateInvoice(latestPayment);
            }
            else if (isRenewal)
            {
                var maxLicensePaymentId = await _context.LicensePayments.MaxAsync(lp => lp.Id);
                var licensePaymentId = maxLicensePaymentId + 1;
                var newLicensePayment = LicensePayment.CopyAsPaid(latestPayment, licensePaymentId);
                _context.LicensePayments.Add(newLicensePayment);
                await GenerateInvoice(newLicensePayment);
            }
            
            if (isInitialPurchase || isRenewal)
            {
                var productType = latestPayment.LicensePaymentItems.First().LicenseProductType;
                var extension = productType == LicenseProductType.KubPrem1Year ? TimeSpan.FromDays(365) : TimeSpan.FromDays(30);
                license.ExpirationDate = license.ExpirationDate.Add(extension);
                license.LastPurchasePeriod = productType;

                if (license.User != null)
                {
                    license.User.JwtVersion++;
                }
                else
                {
                    latestPayment.Customer.JwtVersion++;
                }
            }

            license.MobileStoreSubscriptionState = subscriptionState;

            await _context.SaveChangesAsync();
        }

        private async Task GenerateInvoice(LicensePayment dbPayment)
        {
            try
            {
                var factory = new ConnectionFactory
                {
                    HostName = "rabbit",
                    UserName = "kubirovacka",
                    Password = "jsm3man1ac1"
                };
                using var connection = factory.CreateConnection();
                using var channel = connection.CreateModel();
                channel.QueueDeclare(
                    "createInvoice",
                    true,
                    false,
                    false,
                    null);

                var json = JsonConvert.SerializeObject(new LicensePaymentDTO(dbPayment));
                var buffer = Encoding.UTF8.GetBytes(json);

                channel.BasicPublish("",
                    "createInvoice",
                    null,
                    buffer);
            }
            catch (Exception)
            {
                await _emailingUtils.SendNoreplyEmail(new Dictionary<string, string>
                {
                    {"Václav Kozák", "kozak.vaclav@kobrasoft.cz"},
                    {"Daniel Kozák", "kozak.daniel@kobrasoft.cz"},
                    {"Jan Kozák", "kozak.honza@gmail.com"}
                }, "NEFUNGUJE ZAJÍC!", new DefaultEmail("Nefunguje RabbitMQ", "Dádo oprav to prosím. Utíkají $$ a budeme muset dogenerovávat faktury.", "Spěchá :)",
                    "block", "block", "block", "https://assets.petco.com/petco/image/upload/f_auto,q_auto/rabbit-care-sheet", "rabbit", "block"));
            }
        }

        private async Task SendLicenseActivatedEmail(string payerName, string payerEmail)
        {
            await _emailingUtils.SendNoreplyEmail(new Dictionary<string, string>
            {
                {payerName, payerEmail}
            }, _localizer["Licence prodloužena"], new DefaultEmail(
                _localizer["Vaše licence byly prodlouženy"],
                $"<p>{_localizer["Vaši platbu jsme obdrželi, právě jsme aktivovali/prodloužili vaše licence!"]}</p>" +
                $"<a href='{_configuration["BaseUrl"]}'>{_localizer["Užívat výhody"]}</a>"
            ));
        }

        private LicenseProductType? GetProductTypeFromId(string productId)
        {
            if (productId.ToLower().Contains("monthly"))
            {
                return LicenseProductType.KubPrem1Month;
            }
            if (productId.ToLower().Contains("yearly"))
            {
                return LicenseProductType.KubPrem1Year;
            }
            return null;
        }
    }
}