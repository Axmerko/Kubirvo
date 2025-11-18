using System;
using System.Collections;
using KubirovackaAPI.Areas.Main.User.Enums;

namespace KubirovackaAPI.Areas.Main.User.Models.DTO
{
    public class RoleDTO
    {
        public Guid RoleId { get; set; }
        public RoleType RoleType { get; set; }
        public BitArray Permissions { get; set; }
        public bool IsGlobal { get; set; }
        public string Name { get; set; }
    }
}