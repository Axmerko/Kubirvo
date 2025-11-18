using System;
using System.Collections;
using KubirovackaAPI.Areas.Main.User.Enums;

namespace KubirovackaAPI.Areas.Main.User.Models.DTO
{
    public class GroupDTO
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public GroupType GroupType { get; set; }
        public Guid? ParentId { get; set; }
        public bool IsHomeGroup { get; set; }

        #nullable enable
        public BitArray? Permissions { get; set; }
        
        public bool? IsAdvertiser { get; set; }
        public int? AdCredits { get; set; }
    }
}