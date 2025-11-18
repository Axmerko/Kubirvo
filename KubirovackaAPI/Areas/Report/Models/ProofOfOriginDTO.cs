﻿using System;
 using System.Collections.Generic;
 using KubirovackaAPI.Areas.Report.Models.DTO;

 namespace KubirovackaAPI.Areas.Report.Models
{
    public class ProofOfOriginDTO
    {
        public string DocNumber { get; set; }

        public CompanyDTO Supplier { get; set; }
        public string SupplierName { get; set; }
        public string SupplierCity { get; set; }
        public string SupplierStreetAndNumber { get; set; }
        public string SupplierZipCode { get; set; }
        public string SupplierCountry { get; set; }
        public string SupplierVatNumber { get; set; }

        public CompanyDTO Customer { get; set; }
        public string CustomerName { get; set; }
        public string CustomerCity { get; set; }
        public string CustomerStreetAndNumber { get; set; }
        public string CustomerZipCode { get; set; }
        public string CustomerCountry { get; set; }
        public string CustomerVatNumber { get; set; }

        public CompanyDTO Shipper { get; set; }
        public string ShipperName { get; set; }
        public string ShipperCity { get; set; }
        public string ShipperStreetAndNumber { get; set; }
        public string ShipperZipCode { get; set; }
        public string ShipperCountry { get; set; }
        public string ShipperVatNumber { get; set; }
        
        
        public string DriverName { get; set; }
        public string Vehicle { get; set; }
        public string LicensePlate { get; set; }
        public string WagonNumber { get; set; }
        public string AddressFrom { get; set; }
        public string AddressTo { get; set; }
        public string DateOfShipment { get; set; }
        public string DateOfLoading { get; set; }
        public string BrandIdentificationData { get; set; }
        public string Wood { get; set; }
        public string QualitativeClass { get; set; }
        public string TotalVolumeInPrm { get; set; }
        public string TotalVolume { get; set; }
        public string IssuedBy { get; set; }
        public DateTimeOffset? IssuedDate { get; set; }
        public string IssuedTime { get; set; }
        public string TookOverBy  { get; set; }
        public DateTime? TookOverDate { get; set; }
        public string TookOverTime { get; set; }
        public List<Guid> WoodLogsIds { get; set; }
        public List<WoodLogReportDTO> WoodLogs { get;set; }
    }
}