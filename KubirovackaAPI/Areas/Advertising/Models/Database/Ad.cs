using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Advertising.Enums;
using KubirovackaAPI.Areas.Main.User.Models.Database;

namespace KubirovackaAPI.Areas.Advertising.Models.Database
{
    public class Ad
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public Guid Id { get; set; }
        [Required]
        public DateTimeOffset CreatedAt { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public bool Enabled { get; set; }
        [Required]
        public bool Approved { get; set; }
        [Required]
        public AdType AdType {get; set;}
        
        [Required]
        public int Credits { get; set; }
        [Required]
        public int Cpc { get; set; }
        [Required]
        public int Cpt { get; set; }
        [Required]
        public bool LimitCostPerDay { get; set; }
        public int? MaxCostPerDay { get; set; }
        
        [Required]
        public Guid OwnerGroupId { get; set; }
        public Group OwnerGroup { get; set; }
        
        [Required]
        public DateTimeOffset ShowFrom { get; set; }
        
        [Required]
        public AdContentType AdContentType { get; set; }
        public Guid? ImageId { get; set; }
        public Media? Image { get; set; }
        public string? DestinationUrl { get; set; }
        public string? Html { get; set; }
        
        public ICollection<AdClick> AdClicks { get; set; }
        public ICollection<AdView> AdViews { get; set; }
    }
}