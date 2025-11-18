using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.Database
{
    public class WoodLogListSend
    {
        [Key]
        public Guid Id { get; set; }
        [Required]
        public Guid CreatorId { get; set; }
        
        public string Email { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
        
        [ForeignKey(nameof(CreatorId))]
        public User.Models.Database.User Creator { get; set; }
        public List<WoodLogList> WoodLogLists { get; set; }
    }
}