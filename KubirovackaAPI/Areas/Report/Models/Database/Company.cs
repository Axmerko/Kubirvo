using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Report.Models.DTO;

namespace KubirovackaAPI.Areas.Report.Models.Database
{
    public class Company
    {
        public Company()
        {
        }

        public Company(CompanyDTO dto)
        {
            Name = dto.Name;
            City = dto.City;
            StreetAndNumber = dto.StreetAndNumber;
            ZipCode = dto.ZipCode;
            Country = dto.Country;
            GroupId = dto.GroupId;
            VatNum = dto.VatNum;
            TaxId = dto.TaxId;
        }
        [DatabaseGenerated(DatabaseGeneratedOption.Identity), Key]
        public Guid Id { get; set; }
        [Required]
        public string Name { get; set; }
        public string City { get; set; }
        public string StreetAndNumber { get; set; }
        public string ZipCode { get; set; }
        public string Country { get; set; }
        public Guid GroupId { get; set; }
        public Group Group { get; set; }
        public string VatNum { get; set; }
        public string TaxId { get; set; }

        public void Update(CompanyDTO dto)
        {
            Name = dto.Name;
            City = dto.City;
            StreetAndNumber = dto.StreetAndNumber;
            ZipCode = dto.ZipCode;
            Country = dto.Country;
            GroupId = dto.GroupId;
            VatNum = dto.VatNum;
            TaxId = dto.TaxId;        }
    }
}