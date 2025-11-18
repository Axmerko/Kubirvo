using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using AutoMapper;
using GoPay;
using GoPay.Common;
using GoPay.Model.Payment;
using GoPay.Model.Payments;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.Areas.Payment.License.Enums;
using KubirovackaAPI.Areas.Payment.License.Models;
using KubirovackaAPI.Areas.Payment.License.Models.Database;
using KubirovackaAPI.Areas.Payment.License.Models.DTO;
using KubirovackaAPI.Areas.Payment.License.Utils;
using KubirovackaAPI.Areas.Payment.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using KubirovackaAPI.Settings;
using KubirovackaAPI.Utilities;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Localization;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json;
using RabbitMQ.Client;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Net.Http;
using System.Threading.Tasks;
using JsonSerializer = System.Text.Json.JsonSerializer;

namespace KubirovackaAPI.Areas.Payment.License.Controllers
{
    [Area("Payment")]
    [Route("api/[area]/[controller]")]
    public class LicensePaymentController : KubirovackaController
    {
        private readonly IConfiguration _configuration;
        private readonly IGoPayUtil _goPayUtil;
        private readonly IEmailingUtils _emailingUtils;
        private readonly ILicensePaymentManager _licensePaymentManager;
        private readonly PricingOptions _pricingOptions;
        private readonly JsonSerializerSettings _jsonConfiguration;
        private static HttpClient _httpClient = new HttpClient();
        private static JsonWebKeySet _appleRootCerts;

        public LicensePaymentController(IUserUtil userUtil, KubirovackaContext context, IMapper mapper,
            IConfiguration configuration, IGoPayUtil goPayUtil, IEmailingUtils emailingUtils, 
            ILicensePaymentManager licensePaymentManager, IStringLocalizerFactory strFactory, IOptions<PricingOptions> pricingOptions,
            IOptions<MvcNewtonsoftJsonOptions> jsonOptions)
            : base(userUtil, context, mapper, strFactory)
        {
            this._licensePaymentManager = licensePaymentManager;
            _emailingUtils = emailingUtils;
            _configuration = configuration;
            _goPayUtil = goPayUtil;
            _pricingOptions = pricingOptions.Value;
            _jsonConfiguration = jsonOptions.Value.SerializerSettings;
        }

        /// <summary>
        /// Vytvoří GoPay platbu
        /// </summary>
        /// <returns>Objekt platby</returns>
        /// <response code="201">Platba vytvořena</response>
        /// <response code="400">Chybné parametry předány</response>
        [ProducesResponseType(201)]
        [ProducesResponseType(400)]
        [HttpPost]
        [CheckAccess(IgnoreGroup = true)]
        public async Task<ActionResult<GoPay.Model.Payments.Payment>> CreatePayment([FromBody] LicensePaymentDTO paymentDTO)
        {
            if (paymentDTO.CompanyPurchase && paymentDTO.CompanyCountry != "CZ" && paymentDTO.CompanyCountry != "SK")
            {
                return BadRequest(new ErrorResponse("Země společnosti musí mít hodnotu CZ, nebo SK."));
            }

            var connector = _goPayUtil.GetConnector();
            var orderItems = paymentDTO.OrderItems.Select(product => product.LicenseProductType switch
                {
                    LicenseProductType.KubPrem1Year => new OrderItem
                    {
                        Amount = _goPayUtil.ConvertToCurrencyCents(_pricingOptions.YearlyPrice * 100, paymentDTO.Currency),
                        Count = 1,
                        Ean = "00000123",
                        Name = "Kubírovačka prémium - 1 rok",
                        ItemType = ItemType.ITEM,
                        VatRate = 21,
                        ProductURL = "https://kubirovacka.cz/purchasePremium"
                    },
                    LicenseProductType.KubPrem1Month => new OrderItem
                    {
                        Amount = _goPayUtil.ConvertToCurrencyCents(_pricingOptions.MonthlyPrice * 100, paymentDTO.Currency),
                        Count = 1,
                        Ean = "00000017",
                        Name = "Kubírovačka prémium - 1 měsíc",
                        ItemType = ItemType.ITEM,
                        VatRate = 21,
                        ProductURL = "https://kubirovacka.cz/purchasePremium"
                    },
                    _ => new OrderItem
                    {
                        Amount = _goPayUtil.ConvertToCurrencyCents(_pricingOptions.MonthlyPrice * 100, paymentDTO.Currency),
                        Count = 1,
                        Ean = "00000017",
                        Name = "Kubírovačka prémium - 1 měsíc",
                        ItemType = ItemType.ITEM,
                        VatRate = 21,
                        ProductURL = "https://kubirovacka.cz/purchasePremium"
                    }
                })
                .ToList();

            var payment = new BasePayment
            {
                Currency = paymentDTO.Currency,
                Lang = paymentDTO.Lang,
                OrderNumber = Guid.NewGuid().ToString(),
                Amount = orderItems.Sum(oi => oi.Amount),
                Target = new Target
                {
                    GoId = long.Parse(_configuration["GoPaySettings:GoID"]),
                    Type = Target.TargetType.ACCOUNT,
                },
                Callback = new Callback
                {
                    NotificationUrl = _configuration["GoPaySettings:LicenseNotificationURL"],
                    ReturnUrl = _configuration["GoPaySettings:LicenseReturnURL"]
                },
                Payer = new Payer
                {
                    Contact = new PayerContact
                    {
                        Email = CurrentUser.Email,
                        FirstName = CurrentUser.FirstName,
                        LastName = CurrentUser.LastName,
                    },
                    DefaultPaymentInstrument = PaymentInstrument.PAYMENT_CARD,
                    PaymentInstrument = paymentDTO.PaymentInstrument,
                    AllowedPaymentInstruments = new List<PaymentInstrument>
                    {
                        PaymentInstrument.PAYMENT_CARD,
                        PaymentInstrument.BANK_ACCOUNT,
                        PaymentInstrument.GPAY,
                        PaymentInstrument.MASTERPASS,
                    }
                },
                Items = orderItems
            };

            try
            {
                var result = connector.CreatePayment(payment);
                Context.LicensePayments.Add(new LicensePayment
                {
                    Id = result.Id,
                    Currency = result.Currency,
                    State = result.State,
                    CustomerId = CurrentUser.Id,
                    OrderNumber = Guid.Parse(result.OrderNumber),
                    CompanyPurchase = paymentDTO.CompanyPurchase,
                    CompanyName = paymentDTO.CompanyName,
                    CompanyCountry = paymentDTO.CompanyCountry,
                    CompanyCity = paymentDTO.CompanyCity,
                    CompanyStreetAndNumber = paymentDTO.CompanyStreetAndNumber,
                    CompanyZipCode = paymentDTO.CompanyZipCode,
                    TaxId = paymentDTO.TaxId,
                    VatNum = paymentDTO.VatNum
                });

                foreach (var oi in paymentDTO.OrderItems)
                {
                    Context.LicensePaymentItems.Add(new LicensePaymentItem
                    {
                        LicenseId = oi.LicenseId,
                        LicensePaymentId = result.Id,
                        LicenseProductType = oi.LicenseProductType
                    });
                }

                await Context.SaveChangesAsync();

                await _emailingUtils.SendNoreplyEmail(new Dictionary<string, string>
                {
                    {CurrentUser.FirstName + " " + CurrentUser.LastName, CurrentUser.Email}
                }, Localizer["Potvrzení objednávky"], new DefaultEmail(Localizer["Děkujeme za vaši objednávku"],
                    $"<p>Vaše licence budou aktivovány/prodlouženy, jakmile obdržíme vaši platbu.</p>" +
                    $"<p>Obchodní podmínky naleznete na <a href='https://www.kubirovacka.cz/cs/businessConditions'>" +
                    $"https://www.kubirovacka.cz/cs/businessConditions</a>.</p>" +
                    $"<a href='{result.GwUrl}'>{Localizer["Zaplatit"]}</a>"));

                return Created(string.Empty, result);
            }
            catch (GPClientException e)
            {
                return BadRequest(e.Error);
            }
        }

        [HttpPost("ForceCheckPayments")]
        [CheckAccess(IgnoreGroup = true, Permission = Permission.SuperAdmin)]
        public async Task<IActionResult> ForceCheckPayments()
        {
            var payments = await Context.LicensePayments.Where(lp => lp.State != GoPay.Model.Payments.Payment.SessionState.PAID &&
                                                                        lp.State != GoPay.Model.Payments.Payment.SessionState.CANCELED &&
                                                                        lp.State != GoPay.Model.Payments.Payment.SessionState.REFUNDED &&
                                                                        lp.State != GoPay.Model.Payments.Payment.SessionState.TIMEOUTED &&
                                                                        lp.State != GoPay.Model.Payments.Payment.SessionState.PARTIALLY_REFUNDED)
                .ToListAsync();
            foreach (var payment in payments.Select(dbPaymentItem => _goPayUtil.GetPayment(dbPaymentItem.Id)).Where(payment => payment != null))
            {
                var dbPayment = await Context.LicensePayments.Include(lp => lp.LicensePaymentItems)
                    .Include(lp => lp.Customer)
                    .Include(lp => lp.Customer.UserGroups)
                    .FirstOrDefaultAsync(p => p.Id == payment.Id);
                if (dbPayment != null)
                {
                    await _licensePaymentManager.ProcessGoPayLicensePayment(dbPayment, payment);
                }
            }

            return Ok();
        }

        /// <summary>
        /// Vytvoří Google Play platbu
        /// </summary>
        /// <returns>Objekt platby</returns>
        /// <response code="201">Platba vytvořena</response>
        /// <response code="400">Chybné parametry předány</response>
        [ProducesResponseType(201)]
        [ProducesResponseType(400)]
        [HttpPost("GooglePlay")]
        [CheckAccess(IgnoreGroup = true)]
        public async Task<ActionResult<LicensePaymentDTO>> CreateGooglePlayPayment([FromBody] MobileStoreLicensePaymentDTO paymentDTO)
        {
            var licensePayment = await _licensePaymentManager.CreateMobileStoreLicensePayment(paymentDTO, CurrentUser.Id, LicensePaymentProvider.GooglePlay);
            return Created(string.Empty, new LicensePaymentDTO(licensePayment));
        }
        
        /// <summary>
        /// Vytvoří App Store platbu
        /// </summary>
        /// <returns>Objekt platby</returns>
        /// <response code="201">Platba vytvořena</response>
        /// <response code="400">Chybné parametry předány</response>
        [ProducesResponseType(201)]
        [ProducesResponseType(400)]
        [HttpPost("AppStore")]
        [Authorize]
        [CheckAccess(IgnoreGroup = true)]
        public async Task<ActionResult<LicensePaymentDTO>> CreateAppStorePayment([FromBody] MobileStoreLicensePaymentDTO paymentDTO)
        {
            var licensePayment = await _licensePaymentManager.CreateMobileStoreLicensePayment(paymentDTO, CurrentUser.Id, LicensePaymentProvider.AppStore);
            return Created(string.Empty, new LicensePaymentDTO(licensePayment));
        }

        /// <summary>
        /// Notifikace o změně stavu předplatného z Google Play.
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
        [HttpPost("GooglePlayNotification")]
        [AllowAnonymous]
        public async Task<IActionResult> PostGooglePlaySubscriptionStateNotification([FromBody] GoogleRawNotification message)
        {
            // data v "data" chodi jako Base64 string
            var decodedMessage = Base64UrlEncoder.Decode(message.Message.Data);
            // pouzivame NewtonsoftJson s konfiguraci ktera je pouzita v cele aplikaci, s klasickym JsonSerializer by nefungovalo parsovani enums
            var notification = JsonConvert.DeserializeObject<GooglePlayNotification>(decodedMessage, _jsonConfiguration);

            await _licensePaymentManager.ProcessGooglePlayLicensePayment(notification);
            return Ok();
        }
        
        /// <summary>
        /// Notifikace o změně stavu předplatného z App Store.
        /// </summary>
        /// <param name="notificationDto"></param>
        /// <returns></returns>
        [HttpPost("AppStoreNotification")]
[AllowAnonymous]
public async Task<IActionResult> ProcessAppStoreNotification([FromBody] AppleNotificationDTO notificationDto)
{
    try
    {
        var handler = new JwtSecurityTokenHandler();

        
        if (_appleRootCerts == null)
        {
            var appleKeysJson = await _httpClient.GetStringAsync("https://appleid.apple.com/auth/keys");
            _appleRootCerts = new JsonWebKeySet(appleKeysJson);
        }

        var validationParameters = new TokenValidationParameters
        {
            ValidateIssuer = true,
            ValidIssuer = "https://appleid.apple.com", 
            ValidateAudience = true,
            ValidAudience = "cz.kobrasoft.kubirovackaOne",
            ValidateLifetime = true,
            IssuerSigningKeys = _appleRootCerts.GetSigningKeys(),
            ValidateIssuerSigningKey = true,
        };

        
        SecurityToken validatedToken;
        var principal = handler.ValidateToken(notificationDto.SignedPayload, validationParameters, out validatedToken);

       
        var decodedPayload = System.Text.Json.JsonSerializer.Deserialize<AppleNotificationDecodedPayload>(
            Base64UrlEncoder.Decode(notificationDto.SignedPayload.Split('.')[1])
        );

        if (decodedPayload?.Data?.SignedTransactionInfo == null)
        {
            return BadRequest("Invalid payload structure.");
        }

        var transactionInfo = System.Text.Json.JsonSerializer.Deserialize<AppleTransactionInfo>(
            Base64UrlEncoder.Decode(decodedPayload.Data.SignedTransactionInfo.Split('.')[1])
        );
        
        await _licensePaymentManager.ProcessAppleNotificationAsync(transactionInfo, decodedPayload.Subtype);

        return Ok();
    }
    catch (SecurityTokenException ex)
    {
        
        Console.WriteLine($"Token validation failed: {ex.Message}");
        return Unauthorized($"Token validation failed: {ex.Message}");
    }
    catch (Exception ex)
    {
        Console.WriteLine($"An error occurred while processing Apple notification: {ex.Message}");
        return StatusCode(500, "Internal server error while processing Apple notification.");
    }
}


        /// <summary>
        /// Slouží pro notifikace od platební brány GoPay.
        /// </summary>
        [HttpGet("StateNotification")]
        public async Task<ActionResult<GoPay.Model.Payments.Payment.SessionState>> GetStateNotification([FromQuery] string id)
        {
            var payment = _goPayUtil.GetPayment(long.Parse(id));
            if (payment == null) return NotFound(new ErrorResponse(Localizer["Platba s tímto ID nenalezena!"]));

            var dbPayment = await Context.LicensePayments.Include(lp => lp.LicensePaymentItems)
                .Include(lp => lp.Customer)
                .Include(lp => lp.Customer.UserGroups).FirstOrDefaultAsync(p => p.Id == payment.Id);
            if (dbPayment == null)
                return BadRequest(
                    new ErrorResponse(Localizer["Platba s tímto ID nenalezena v databázi! Kontaktujte podporu."]));

            await _licensePaymentManager.ProcessGoPayLicensePayment(dbPayment, payment);

            return Ok(payment.State);
        }

        [HttpGet("State")]
        public ActionResult<GoPay.Model.Payments.Payment.SessionState> GetState([FromQuery] string id)
        {
            var payment = _goPayUtil.GetPayment(long.Parse(id));
            if (payment == null) return NotFound(new ErrorResponse(Localizer["Platba s tímto ID nenalezena!"]));

            return Ok(payment.State);
        }

        [HttpPost("GenerateMissingInvoices")]
        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        public async Task<ActionResult> GenerateMissingInvoices([FromForm] int year)
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

            var payments = Context.LicensePayments
                .Where(l => l.State == GoPay.Model.Payments.Payment.SessionState.PAID)
                .Where(l => l.InvoiceGenerated == false)
                .Include(l => l.LicensePaymentItems)
                .Include(l => l.Customer)
                .AsEnumerable()
                .Where(l => l.PaidAt!.Value.Year == year)
                .ToList();

            payments.ForEach(payment =>
            {
                var json = JsonConvert.SerializeObject(new LicensePaymentDTO(payment));
                var buffer = Encoding.UTF8.GetBytes(json);

                channel.BasicPublish("",
                    "createInvoice",
                    null,
                    buffer);
            });

            return Ok(payments.Count);
        }
    }
}