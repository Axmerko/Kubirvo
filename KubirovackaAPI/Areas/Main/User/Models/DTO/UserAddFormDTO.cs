using System;
using System.ComponentModel.DataAnnotations;

namespace KubirovackaAPI.Areas.Main.User.Models.DTO
{
    public class UserAddFormDTO : UserRegisterDTO
    {
        [Required(ErrorMessage = "Role musí být vyplněna!")]
        public Guid RoleId { get; set; }
    }
}