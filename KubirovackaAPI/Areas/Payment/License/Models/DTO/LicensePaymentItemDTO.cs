using System;
using System.ComponentModel.DataAnnotations;
using KubirovackaAPI.Areas.Payment.License.Enums;
using KubirovackaAPI.Areas.Payment.License.Models.Database;

namespace KubirovackaAPI.Areas.Payment.License.Models.DTO
{
    public class LicensePaymentItemDTO
    {
        public LicensePaymentItemDTO()
        {
        }

        public LicensePaymentItemDTO(LicensePaymentItem item)
        {
            LicenseId = item.LicenseId;
            LicenseProductType = item.LicenseProductType;
        }

        public Guid? LicenseId { get; set; }
        [Required(ErrorMessage = "Produkt musí být zvolen!")]
        public LicenseProductType LicenseProductType { get; set; }
    }
}