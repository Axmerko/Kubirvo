using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace KubirovackaAPI.Areas.Payment.License.Models.DTO;

public class MobileStoreLicensePaymentDTO
{

        [Required(ErrorMessage = "Produkty musí být zvoleny!")]
        public LicensePaymentItemDTO[] OrderItems { get; set; }
        [Required(ErrorMessage = "ID nákupu musí být vyplněno!")]
        public string PurchaseId { get; set; }
        
        public bool CompanyPurchase { get; set; }
        public string? CompanyName { get; set; }
        public string? CompanyCity { get; set; }
        public string? CompanyStreetAndNumber { get; set; }
        public string? CompanyZipCode { get; set; }
        public string? CompanyCountry { get; set; }
        public string? VatNum { get; set; }
        public string? TaxId { get; set; }
}