using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace KubirovackaAPI.Areas.Main.User.Models.Database.Join
{
    public class UserGroup
    {
        [Required]
        public Guid UserId { get; set; }
        public User User { get; set; }
        
        [Required]
        public Guid GroupId { get; set; }
        public Group Group { get; set; }

        [Required] public Guid RoleId { get; set; }
        public Role Role { get; set; }
        
        [Required]
        public bool IsHomeGroup { get; set; }
        
        [Required]
        public UserGroupStatus Status { get; set; }
        [Required,  DefaultValue(false)]
        public bool IsSubAccount { get; set; }
    }

    public enum UserGroupStatus
    {
        Status_Active = 0,
        Status_Disabled = 1,
    }
}