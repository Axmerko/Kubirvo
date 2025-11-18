using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.User.Models.Database.Join;

namespace KubirovackaAPI.Areas.Main.User.Models.DTO
{
    public class UserEditProfileDTO
    {
        [Required]
        public Guid Id { get; set; }
        [EmailAddress(ErrorMessage = "Neplatný email!")]
        public string Email { get; set; }
        [MinLength(2, ErrorMessage = "First name is too short!")]
        public string FirstName { get; set; }
        [MinLength(2, ErrorMessage = "Last name is too short!")]
        public string LastName { get; set; }
        public string Password { get; set; }
        public Guid? RoleId { get; set; }
    }
}