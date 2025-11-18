using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace KubirovackaAPI.Areas.Advertising.Models.Database
{
    public class AdClick
    {
        [Required] public Guid AdId { get; set; }
        [ForeignKey(nameof(AdId))]
        public Ad Ad { get; set; }
        
        [Required] public DateTimeOffset ClickedAt { get; set; }
        [Required] public string Ip { get; set; }
        [Required] public int Cost { get; set; }
    }
}