using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using KubirovackaAPI.Areas.Main.WoodLogList.Enums;
using NpgsqlTypes;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class ShareLogListDTO
    {
        [Required(ErrorMessage = "Email musí být zadán!"), EmailAddress(ErrorMessage = "Neplatný email!")] 
        public string Email { get; set; }
        [Required(ErrorMessage = "Musí být vybrán seznam klád!")]
        public List<Guid> WoodLogListIds { get; set; }
        public string? Message { get; set; }
    }
}