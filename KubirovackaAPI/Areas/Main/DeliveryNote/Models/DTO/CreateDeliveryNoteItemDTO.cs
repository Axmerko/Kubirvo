using System;

namespace KubirovackaAPI.Areas.Main.DeliveryNote.Models.DTO
{
    public class CreateDeliveryNoteItemDTO
    {
        public Guid? SortimentId { get; set; }
        public double Volume { get; set; }
        public string DeparturePlace { get; set; }
    }
}