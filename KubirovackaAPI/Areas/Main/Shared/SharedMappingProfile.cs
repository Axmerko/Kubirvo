using AutoMapper;
using KubirovackaAPI.Areas.Main.Shared.Models.Database;
using KubirovackaAPI.Areas.Main.Shared.Models.DTO;

namespace KubirovackaAPI.Areas.Main.Shared
{
    public class SharedMappingProfile : Profile
    {
        public SharedMappingProfile()
        {
            CreateMap<DiagnosticLog, DiagnosticLogDTO>();
        }
        
    }
}