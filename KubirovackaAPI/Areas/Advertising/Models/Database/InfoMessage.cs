using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace KubirovackaAPI.Areas.Advertising.Models.Database
{
    public class InfoMessage
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [Required]
        public DateTimeOffset CreatedAt { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public string Text { get; set; }
        [Required]
        public string LinkText { get; set; }
        [Required]
        public string Url { get; set; }
        [Required]
        public DateTimeOffset ShowUntil { get; set; }
    }
}