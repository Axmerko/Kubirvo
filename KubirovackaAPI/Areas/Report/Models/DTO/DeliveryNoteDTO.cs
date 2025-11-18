 using System;
 using System.Collections.Generic;
 using KubirovackaAPI.Areas.Report.Models.DTO;
 using KubirovackaAPI.Models;

 namespace KubirovackaAPI.Areas.Report.Models.DTO
{
    public class DeliveryNoteDTO
    {
        public string DocNumber { get; set; }

        public CompanyDTO Supplier { get; set; }
        public CompanyDTO Customer { get; set; }
        public DateTimeOffset? DateOfIssue { get; set; }
        public DateTimeOffset? DateOfDelivery { get; set; }
        public string BankAccount { get; set; }
        public int VariableSymbol { get; set; }
        
        public string Order { get; set; }

        public string Worker { get; set; }
        public string ShippingAndDelivery { get; set; }
        public string Condition { get; set; }
        public string Note { get; set; }

        public float PriceSubtotal { get; set; }
        public float PriceTax { get; set; }
        public float PriceShipping { get; set; }
        public float PriceTotal { get; set; }
        
        public float TotalVolume { get; set; }


        public string OtherCustomer { get; set; }
        public string OtherCustomerName { get; set; }
        public DateTimeOffset? OtherCustomerDate { get; set; }
        public string OtherCustomerTime { get; set; }

        public string OtherSupplier { get; set; }
        public string OtherSupplierContact { get; set; }
        public string OtherSupplierEmail { get; set; }
        public string OtherSupplierPhone { get; set; }

        public List<Guid> WoodLogsIds { get; set; }
        public List<WoodLogReportDTO> WoodLogs { get;set; }
        public float M3PerLog { get; set; }
    }
}