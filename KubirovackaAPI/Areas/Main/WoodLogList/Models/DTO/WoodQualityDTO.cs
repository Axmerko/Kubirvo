using System.ComponentModel.DataAnnotations;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class WoodQualityDTO
    {
        [Required] public int Quality { get; set; }
        [Required] public string Name { get; set; }
        [Required] public bool Disabled { get; set; }
    }
}