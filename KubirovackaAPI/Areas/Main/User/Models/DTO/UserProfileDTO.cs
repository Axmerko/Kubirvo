using System;
using System.Collections.Generic;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.User.Models.Database.Join;

namespace KubirovackaAPI.Areas.Main.User.Models.DTO
{
    public class UserProfileDTO
    {
        public Guid Id { get; set; }
        public DateTimeOffset RegisteredAt { get; set; }
        public string Email { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Locale { get; set; }
        public UserGroupStatus Status { get; set; }
        public Guid? HomeGroupId { get; set; }
        public DateTimeOffset? LicenseEnd { get; set; }
        public Guid? RoleId { get; set; }
        public bool IsSubAccount { get; set; }
    }
}