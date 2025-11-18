using System;
using System.ComponentModel.DataAnnotations;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class WoodLogListStatusDTO
    {
        public int Id { get; set; }
        #nullable enable
        public string? CustomName { get; set; }
        #nullable disable
        public bool IsGlobal { get; set; }
        public Guid? OwnerGroupId { get; set; }
        public WoodLogListStatusType StatusType { get; set; }
    }
}