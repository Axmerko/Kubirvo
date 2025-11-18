using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace KubirovackaAPI.Areas.Main.DeliveryNote.Models.DTO
{
    public class CreateDeliveryNoteDTO
    {
        public Guid Guid { get; set; }
        public string LicensePlate { get; set; }
        public DateTimeOffset DateOfDeparture { get; set; }
        public string ReportNumber { get; set; }
        public Guid? CustomerId { get; set; }
        public Guid? CarrierId { get; set; }
        public Guid? SupplierId { get; set; }
        [Required(ErrorMessage = "Číslo dokladu musí být vyplněno.")]
        public string DeliveryNoteNumber { get; set; }
        
        public IEnumerable<CreateDeliveryNoteItemDTO> DeliveryNoteItemDtos { get; set; }
    }
}