using System;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class WoodLogListFilterDTO
    {
        public Guid User { get; set; }
        public DateTimeOffset CreatedFrom { get; set; }
        public DateTimeOffset CreatedTo { get; set; }
        public WoodLogListStatusType Status { get; set; }
    }
}