using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using KubirovackaAPI.Areas.Advertising.Enums;
using KubirovackaAPI.Areas.Advertising.Models.Database;

namespace KubirovackaAPI.Areas.Advertising.Models.DTO
{
    public class AdDTO
    {
        [DefaultValue(AdType.Banner)]
        public AdType AdType {get; set;}
        
        [Required]
        public string Name { get; set; }
        
        [Required]
        public bool LimitCostPerDay { get; set; }
        public int? MaxCostPerDay { get; set; }
        
        public DateTimeOffset? ShowFrom { get; set; }
        
        [DefaultValue(AdContentType.Image)]
        public AdContentType AdContentType { get; set; }
        public Guid? ImageId { get; set; }
        public string? DestinationUrl { get; set; }
        public string? Html { get; set; }
        
        // Only to return
        public Guid? AdId { get; set; }
        public DateTimeOffset? CreatedAt { get; set; }
        public bool? Approved { get; set; }
        public bool? Enabled { get; set; }
        public int? Credits { get; set; }
    }
}