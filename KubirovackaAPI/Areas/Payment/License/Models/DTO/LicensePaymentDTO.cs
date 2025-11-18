using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using GoPay.Common;
using GoPay.Model.Payments;
using KubirovackaAPI.Areas.Payment.License.Models.Database;

namespace KubirovackaAPI.Areas.Payment.License.Models.DTO
{
    public class LicensePaymentDTO
    {
        public LicensePaymentDTO()
        {
        }

        // for rabbitMQ
        public LicensePaymentDTO(LicensePayment l)
        {
            if (l.LicensePaymentItems == null) throw new Exception("License payment items cannot be null in the rabbit constructor!"); 
            if (l.Customer == null) throw new Exception("Customer cannot be null in the rabbit constructor!"); 
            Id = l.Id;
            OrderNumber = l.OrderNumber;
            Currency = l.Currency;
            CompanyPurchase = l.CompanyPurchase;
            CompanyName = l.CompanyName;
            CompanyCountry = l.CompanyCountry;
            CompanyCity = l.CompanyCity;
            CompanyStreetAndNumber = l.CompanyStreetAndNumber;
            CompanyZipCode = l.CompanyZipCode;
            VatNum = l.VatNum;
            TaxId = l.TaxId;
            OrderItems = l.LicensePaymentItems.Select(li => new LicensePaymentItemDTO(li)).ToArray();
            OrderedAt = l.OrderedAt;
            PaidAt = l.PaidAt;
            CustomerName = l.Customer.FirstName + " " + l.Customer.LastName;
            CustomerEmail = l.Customer.Email;
        }

        public long Id { get; set; }
        public Guid OrderNumber { get; set; }
        [DefaultValue("CZK")]
        public Currency Currency { get; set; }
        [DefaultValue("CS")]
        public string Lang { get; set; }
        [DefaultValue(PaymentInstrument.PAYMENT_CARD)]
        public PaymentInstrument PaymentInstrument { get; set; }
        [Required(ErrorMessage = "Produkty musí být zvoleny!")]
        public LicensePaymentItemDTO[] OrderItems { get; set; }
        
        [Required, DefaultValue(false)]
        public bool CompanyPurchase { get; set; }
        public string CompanyName { get; set; }
        public string CompanyCity { get; set; }
        public string CompanyStreetAndNumber { get; set; }
        public string CompanyZipCode { get; set; }
        public string CompanyCountry { get; set; }
        public string VatNum { get; set; }
        public string TaxId { get; set; }
        public DateTimeOffset? OrderedAt { get; set; }
        public DateTimeOffset? PaidAt { get; set; }
        public string CustomerName { get; set; }
        public string CustomerEmail { get; set; }
    }
}