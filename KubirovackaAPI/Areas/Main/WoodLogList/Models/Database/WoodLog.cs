using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Main.WoodLogList.Enums;
using NpgsqlTypes;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.Database
{
    public class WoodLog
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)] public Guid Id { get; set; }
        [Required] public WoodLogType WoodLogType { get; set; }
        public float? Length { get; set; }
        public float? Diameter { get; set; }
        [Required] public float Volume { get; set; }
        public string Fsdu { get; set; }
        [Required] public bool IsRhizome { get; set; }
        [Required] public int Number { get; set; }
        [Required] public WoodType WoodType { get; set; }
        [Required] public int Quality { get; set; }
        public NpgsqlPoint? Location { get; set; }
        public DateTimeOffset? AddedAt { get; set; }
        public int? RawCategory { get; set; }

        [Required] public Guid LogsListId { get; set; }
        public WoodLogList WoodLogList { get; set; }
    }
}