using System;
using KubirovackaAPI.Areas.Main.User.Models.DTO;
using KubirovackaAPI.Areas.Report.Models.Database;

namespace KubirovackaAPI.Areas.Report.Models.DTO
{
    public class CompanyDTO
    {
        public CompanyDTO()
        {
        }

        public CompanyDTO(Company company)
        {
            Id = company.Id;
            Name = company.Name;
            City = company.City;
            StreetAndNumber = company.StreetAndNumber;
            ZipCode = company.ZipCode;
            Country = company.Country;
            GroupId = company.GroupId;
            Group = new GroupBriefDTO(company.Group);
            VatNum = company.VatNum;
            TaxId = company.TaxId;
        }

        public Guid? Id { get; set; }
        public string Name { get; set; }
        public string City { get; set; }
        public string StreetAndNumber { get; set; }
        public string ZipCode { get; set; }
        public string Country { get; set; }
        public Guid GroupId { get; set; }
        public GroupBriefDTO Group { get; set; }

        public string VatNum { get; set; }
        public string TaxId { get; set; }
    }
}