using System;
using AutoMapper;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO;

namespace KubirovackaAPI.Areas.Main.WoodLogList
{
    public class WoodLogListMappingProfile : Profile
    {
        public WoodLogListMappingProfile()
        {
            CreateMap<WoodLogListDTO, Models.Database.WoodLogList>()
                .AfterMap(((from, to) =>
                {
                    var guid = to.Id == Guid.Empty ? Guid.NewGuid() : to.Id;
                    foreach (var log in to.Logs)
                    {
                        log.LogsListId = guid;
                    }
                }));
            CreateMap<WoodLogDTO, WoodLog>();
            CreateMap<WoodLog, WoodLogDTO>();
            CreateMap<Models.Database.WoodLogList, WoodLogListDTO>();
            CreateMap<WoodQuality, WoodQualityDTO>().ReverseMap();
            CreateMap<Models.Database.WoodLogList, WoodLogListSendDTO>();
        }
    }
}