using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Main.User.Models.Database;

namespace KubirovackaAPI.Areas.Misc.Feedback.Models.Database
{
    public class Feedback
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity), Key] public Guid Id { get; set; }
        [Required] public string Message { get; set; }
        [Required] public Guid UserId { get; set; }
        [Required] public DateTimeOffset CreatedAt { get; set; }
        [Required] public FeedbackStatus Status { get; set; }
        
        [ForeignKey(nameof(UserId))]
        public User User { get; set; }
    }
}