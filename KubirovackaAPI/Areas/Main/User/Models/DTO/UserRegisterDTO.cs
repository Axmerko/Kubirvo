using System;
using System.ComponentModel.DataAnnotations;

namespace KubirovackaAPI.Areas.Main.User.Models.DTO
{
    public class UserRegisterDTO
    {
        [Required(ErrorMessage = "Email musí být vyplněn!"), EmailAddress(ErrorMessage = "Neplatný email!")]
        public string Email { get; set; }
        
        [Required(ErrorMessage = "Křestní jméno musí být vyplněno!"),
         MinLength(2, ErrorMessage = "Křestní jméno musí být alespoň {1} znaků dlouhé.")]
        public string FirstName { get; set; }
        
        [Required(ErrorMessage = "Příjmení musí být vyplněno!"),
         MinLength(2, ErrorMessage = "Příjmení musí být alespoň {1} znaků dlouhé.")]
        public string LastName { get; set; }
        
        [Required(ErrorMessage = "Heslo musí být vyplněno!"), RegularExpression(@"^.{6,}$",
             ErrorMessage = "Heslo musí obsahovat alespoň 6 znaků!")]
        public string Password { get; set; }
        
        [Required(ErrorMessage = "Jazyk musí být vyplněn!"),
         RegularExpression(@"^.{2,}$", ErrorMessage = "Neplatná hodnota jazyka.")]
        public string Locale { get; set; }
        
        public string FirebaseToken { get; set; }
    }
}