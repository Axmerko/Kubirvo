using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace KubirovackaAPI.Areas.Advertising.Models.Database
{
    public class Media
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public Guid Id { get; set; }
        [Required]
        public byte[] MediaBytes { get; set; }
        
        public ICollection<Ad> Ads { get; set; }
    }
}