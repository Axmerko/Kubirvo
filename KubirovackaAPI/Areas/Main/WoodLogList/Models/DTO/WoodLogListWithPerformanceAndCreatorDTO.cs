using System;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class WoodLogListWithPerformanceAndCreatorDTO : WoodLogListWithPerformanceDTO
    {
        public Guid CreatorId { get; set; }
        public string CreatorEmail { get; set; }
        public string CreatorFistName { get; set; }
        public string CreatorLastName { get; set; }
    }
}