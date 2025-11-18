using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Main.User.Models.Database;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.Database
{
    public class WoodLogListStatus
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity), Key]
        public int Id { get; set; }
        #nullable enable
        public string? CustomName { get; set; }
        #nullable disable
        [Required]
        public bool IsGlobal { get; set; }
        public Guid? OwnerGroupId { get; set; }
        [Required]
        public WoodLogListStatusType StatusType { get; set; }
        
        #nullable enable
        [ForeignKey(nameof(OwnerGroupId))]
        public Group? OwnerGroup { get; set; }
        #nullable disable
        
        public IEnumerable<WoodLogList> Lists { get; set; }
    }
}