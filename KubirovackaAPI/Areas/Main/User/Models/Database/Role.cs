using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Main.User.Enums;

namespace KubirovackaAPI.Areas.Main.User.Models.Database
{
    public class Role
    {
        [Key][DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid RoleId { get; set; }
        
        public RoleType RoleType { get; set; }
        
        [Required]
        public BitArray Permissions { get; set; }
        
        public bool IsGlobal { get; set; }
        public string Name { get; set; }
    }
}