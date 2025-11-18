using System;
using System.ComponentModel.DataAnnotations;
using KubirovackaAPI.Areas.Main.User.Models.DTO;

namespace KubirovackaAPI.Areas.Misc.Feedback.Models.DTO
{
    public class FeedbackDTO
    {
        public Guid Id { get; set; }
        [Required(ErrorMessage = "Zpráva musí být vyplněna!"),
         MinLength(10, ErrorMessage = "Zpráva musí mít alespoň 10 znaků!"),
        MaxLength(255, ErrorMessage = "Zpráva může mít maximálně 255 znaků!")] public string Message { get; set; }
        public Guid UserId { get; set; }
        public UserProfileDTO User { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
        public FeedbackStatus Status { get; set; }
    }
}