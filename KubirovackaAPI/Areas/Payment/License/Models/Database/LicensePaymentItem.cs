using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Payment.License.Enums;

namespace KubirovackaAPI.Areas.Payment.License.Models.Database
{
    public class LicensePaymentItem
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity), Key] 
        public Guid Id { get; set; }
        [Required]
        public LicenseProductType LicenseProductType { get; set; }
        #nullable enable
        public Guid? LicenseId { get; set; }
        public Main.User.Models.Database.License? License { get; set; }
        #nullable disable
        
        public long LicensePaymentId { get; set; }
        public LicensePayment LicensePayment { get; set; }

        public static LicensePaymentItem Copy(LicensePaymentItem it, long licensePaymentId)
        {
            return new LicensePaymentItem
            {
                LicenseProductType = it.LicenseProductType,
                LicenseId = it.LicenseId,
                LicensePaymentId = licensePaymentId
            };
        }
    }
}