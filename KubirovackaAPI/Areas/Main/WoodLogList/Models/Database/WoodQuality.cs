using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Main.User.Models.Database;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.Database
{
    public class WoodQuality
    {
        [Key][DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid Id { get; set; }
        [Required] public int Quality { get; set; }
        [Required] public string Name { get; set; }
        [Required] public Guid GroupId { get; set; }
        public Group Group { get; set; }
        public bool Disabled { get; set; }
    }
}