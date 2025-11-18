using System;
using System.Collections;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Models.Database;

namespace KubirovackaAPI.Areas.Main.User.Models.DTO
{
    public class GroupBriefDTO
    {
        public GroupBriefDTO(Group group)
        {
            Id = group.Id;
            Name = group.Name;
            GroupType = group.GroupType;
            ParentId = group.ParentId;
        }
        public Guid Id { get; set; }
        public string Name { get; set; }
        public GroupType GroupType { get; set; }
        public Guid? ParentId { get; set; }
    }
}