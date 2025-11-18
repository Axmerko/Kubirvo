using System;
using System.Collections;
using System.ComponentModel.DataAnnotations;
using System.Runtime.InteropServices;
using KubirovackaAPI.Areas.Main.User.Enums;
using Org.BouncyCastle.Asn1.Cmp;
using Org.BouncyCastle.Ocsp;

namespace KubirovackaAPI.Areas.Main.User.Models.DTO
{
    public class LicenseDTO
    {
        public Guid? Id { get; set; }
        [Required(ErrorMessage = "Datum expirace musí být zadané!")] public DateTimeOffset ExpirationDate {get; set; }
        [Required(ErrorMessage = "Datum začátku licence musí být zadané!")] public DateTimeOffset StartDate {get; set; }
        [Required(ErrorMessage = "Rámce licence musí být uvedeny!")] public BitArray LicenseScopes {get; set; }
        public Guid? UserId {get; set; }
        [Required(ErrorMessage = "Skupina musí být zadána!")] public Guid OwnerGroupId { get; set; }
        public string OwnerName { get; set; }
    }
}