using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.WoodLogList.Enums;
using KubirovackaAPI.Migrations;
using NPOI.SS.Formula.Functions;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.Database
{
    public class WoodLogList
    {
        [Key]
        public Guid Id { get; set; }

        [Required, MinLength(1)] public string Name { get; set; }
        [Required] public DateTimeOffset CreatedAt { get; set; }
        [Required] public DateTimeOffset UploadedAt { get; set; }
        [Required] public DateTimeOffset UpdatedAt { get; set; }
        [Required] public Guid CreatorId { get; set; }
        public Guid EditedBy { get; set; }
        [Required] public RewardType RewardType { get; set; }
        [Required] public int RewardInCents { get; set; }
        public Guid? WoodLogListSendId { get; set; }
        public Guid? CopiedFromId { get; set; }
        [Required] public Guid OwnerGroupId { get; set; }
        public Group OwnerGroup { get; set; }
        public User.Models.Database.User Creator { get; set; }

        [Required]
        public bool EditedFromWeb { get; set; }
        
        [Required] public bool IsSnapshot { get; set; } // Sdileny seznam, ktery nejde upravovat
        
        public ICollection<WoodLog> Logs { get; set; }
        
        [ForeignKey(nameof(WoodLogListSendId))]
        public WoodLogListSend WoodLogListSend { get; set; }
        
        [ForeignKey(nameof(CopiedFromId))]
        public WoodLogList CopiedFrom { get; set; }
        
        public int? Version { get; set; }
        
        [Required]
        public int StatusId { get; set; }
        
        [ForeignKey(nameof(StatusId))]
        public WoodLogListStatus Status { get; set; }
        public IEnumerable<WoodLogList> Copies { get; set; }
    }
}