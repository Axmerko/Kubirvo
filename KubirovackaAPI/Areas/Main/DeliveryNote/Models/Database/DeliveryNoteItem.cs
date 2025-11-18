using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace KubirovackaAPI.Areas.Main.DeliveryNote.Models.Database
{
    public class DeliveryNoteItem
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid Id { get; set; }
        public Guid? SortimentId { get; set; }
        public double Volume { get; set; }
        public string DeparturePlace { get; set; }
        public Guid DeliveryNoteId { get; set; }
        
        [ForeignKey(nameof(DeliveryNoteId))]
        public virtual DeliveryNote DeliveryNote { get; set; }
        
        [ForeignKey(nameof(SortimentId))]
        public virtual Sortiment.Models.Database.Sortiment? Sortiment { get; set; }
    }
}