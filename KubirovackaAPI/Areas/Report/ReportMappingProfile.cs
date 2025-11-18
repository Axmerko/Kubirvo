using AutoMapper;
using KubirovackaAPI.Areas.Report.Models.DTO;
using KubirovackaAPI.Areas.Report.Models.Database;

namespace KubirovackaAPI.Areas.Report
{
    public class ReportMappingProfile : Profile
    {
        public ReportMappingProfile()
        {
            CreateMap<Company, CompanyDTO>();
            CreateMap<CompanyDTO, Company>();
        }

    }
}