using System;
using System.ComponentModel.DataAnnotations;

namespace KubirovackaAPI.Areas.Main.DeliveryNote.Models.DTO
{
    public class UpdateLockedDTO
    {
        [Required] public Guid Id { get; set; }
        [Required] public bool Locked { get; set; }
    }
}