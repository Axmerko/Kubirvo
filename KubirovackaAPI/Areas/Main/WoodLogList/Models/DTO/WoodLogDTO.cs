using System;
using System.ComponentModel.DataAnnotations;
using KubirovackaAPI.Areas.Main.WoodLogList.Enums;
using NpgsqlTypes;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class WoodLogDTO
    {
        [Required(ErrorMessage = "Typ klády musí být zadán!")] public WoodLogType WoodLogType { get; set; }
        [Required(ErrorMessage = "Délka klády musí být zadána!")] public float Length { get; set; }
        [Required(ErrorMessage = "Průměr klády musí být zadán!")] public float Diameter { get; set; }
        [Required(ErrorMessage = "Objem klády musí být zadán!")] public float Volume { get; set; } 
        [Required(ErrorMessage = "Musí být zadáno, jestli je kláda oddenek!")] public bool IsRhizome { get; set; }
        [Required(ErrorMessage = "Číslo klády musí být zadáno!")] public int Number { get; set; }
        [Required(ErrorMessage = "Dřevina klády musí být zadána!")] public WoodType WoodType { get; set; }
        [Required(ErrorMessage = "Jakost klády musí být zadána!")] public int Quality { get; set; }
        public string QualityName { get; set; }
        public string Fsdu { get; set; }
        public NpgsqlPoint? Location { get; set; }
        public DateTimeOffset? AddedAt { get; set; }
        public int? RawCategory { get; set; } 
        public int? Position { get; set; } // Slouži jen pro indexaci v anguláru, něco jako ID
    }
}