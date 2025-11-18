using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Main.DeliveryNote.Models.Database;
using KubirovackaAPI.Areas.Main.User.Models.Database.Join;
using KubirovackaAPI.Areas.Misc.Feedback.Models.Database;
using KubirovackaAPI.Areas.Payment.License.Models.Database;

namespace KubirovackaAPI.Areas.Main.User.Models.Database
{
    public class User
    {
        [Key]
        public Guid Id { get; set; }
        [Required, DisplayFormat(DataFormatString = "{0:dd. MMMM yyyy}", ApplyFormatInEditMode = true)]
        public DateTimeOffset RegisteredAt { get; set; }
        [Required] public string Email { get; set; }
        [Required] public string FirstName { get; set; }
        [Required] public string LastName { get; set; }
        [Required] public string Password { get; set; }
        [Required] public string Locale { get; set; }
        [Required] public bool Confirmed { get; set; }
        public string PasswordResetToken { get; set; }
        public string FirebaseToken { get; set; }
        public int? IDokladId { get; set; }
        [Required] public int JwtVersion { get; set; }
        public ICollection<UserGroup> UserGroups { get; set; }
        public ICollection<License> LicensesUsed { get; set; }
        [Required] public bool IsAdmin { get; set; }

        public ICollection<LicensePayment> LicensePayments { get; set; }
        public ICollection<Feedback> Feedbacks { get; set; }
        public virtual ICollection<Sortiment.Models.Database.Sortiment> Sortiments { get; set; }
        public virtual ICollection<DeliveryNote.Models.Database.DeliveryNote> DeliveryNotes { get; set; }
    }
}