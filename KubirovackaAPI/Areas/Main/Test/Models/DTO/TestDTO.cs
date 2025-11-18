using System.ComponentModel.DataAnnotations;

namespace KubirovackaAPI.Areas.Main.Test.Models.DTO
{
    public class TestDTO
    {
        [Required(ErrorMessage = "an.send.list"), EmailAddress(ErrorMessage = "Neplatný email!")]
        public string Email { get; set; }
    }
}