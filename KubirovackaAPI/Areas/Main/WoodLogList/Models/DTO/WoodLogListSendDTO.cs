using System;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class WoodLogListSendDTO : WoodLogListWithPerformanceAndCreatorDTO
    {
        public Guid SharerId { get; set; }
        public string SharerFirstName { get; set; } 
        public string SharerLastName { get; set; }
        public string SharerEmail { get; set; }
        public bool Accepted { get; set; }
    }
}