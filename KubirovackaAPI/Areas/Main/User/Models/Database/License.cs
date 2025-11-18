using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Payment.License.Enums;

namespace KubirovackaAPI.Areas.Main.User.Models.Database
{
    public class License
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public Guid Id { get; set; }
        [Required] public DateTimeOffset CreatedAt { get; set; }
        public Guid? UserId { get; set; }
        public User User { get; set; }
        [Required] public Guid OwnerGroupId { get; set; }
        public Group OwnerGroup { get; set; }
        [Required] public DateTimeOffset StartDate { get; set; }
        [Required] public DateTimeOffset ExpirationDate { get; set; }
        [Required] public BitArray LicenseScopes { get; set; }
        public LicenseProductType? LastPurchasePeriod { get; set; }
        public DateTimeOffset? NotifyExpirationAt { get; set; }
        public string? MobileStoreSubscriptionState { get; set; }
    }
}