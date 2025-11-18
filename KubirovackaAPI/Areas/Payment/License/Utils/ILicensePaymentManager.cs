
using System;
using System.Threading.Tasks;
using KubirovackaAPI.Areas.Payment.License.Models.Database;
using KubirovackaAPI.Areas.Payment.License.Models.DTO;
using GoPayPayment = GoPay.Model.Payments.Payment;
using KubirovackaAPI.Areas.Payment.License.Enums;

namespace KubirovackaAPI.Areas.Payment.License.Utils
{
    public interface ILicensePaymentManager
    {
        Task<GoPayPayment.SessionState?> ProcessGoPayLicensePayment(LicensePayment dbPayment, GoPayPayment payment);
         
        Task ProcessGooglePlayLicensePayment(GooglePlayNotification message);
         
        Task ProcessAppleNotificationAsync(AppleTransactionInfo transactionInfo, string notificationSubtype);

        Task<LicensePayment> CreateMobileStoreLicensePayment(MobileStoreLicensePaymentDTO paymentDto, Guid userId, LicensePaymentProvider provider);
    }
}