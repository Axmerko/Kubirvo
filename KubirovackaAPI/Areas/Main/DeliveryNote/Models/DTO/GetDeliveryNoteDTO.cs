using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace KubirovackaAPI.Areas.Main.DeliveryNote.Models.DTO
{
    public class GetDeliveryNoteDTO
    {
        public GetDeliveryNoteDTO(Database.DeliveryNote deliveryNote)
        {
            Id = deliveryNote.Id;
            LicensePlate = deliveryNote.LicensePlate;
            DateOfDeparture = deliveryNote.DateOfDeparture;
            ReportNumber = deliveryNote.ReportNumber;
            DeliveryNoteNumber = deliveryNote.DeliveryNoteNumber;
            OwnerGroupGuid = deliveryNote.OwnerGroupGuid;
            OwnerUserGuid = deliveryNote.OwnerUserGuid;
            CustomerId = deliveryNote.CustomerId;
            CarrierId = deliveryNote.CarrierId;
            SupplierId = deliveryNote.SupplierId;
            NumberOfItems = deliveryNote.DeliveryNoteItems.Count;
            Locked = deliveryNote.Locked;
        }
        
        public Guid Id { get; set; }
        public string LicensePlate { get; set; }
        public DateTimeOffset DateOfDeparture { get; set; }
        public string ReportNumber { get; set; }
        public string DeliveryNoteNumber { get; set; }
        public Guid OwnerGroupGuid { get; set; }
        public Guid OwnerUserGuid { get; set; }
        public Guid? CustomerId { get; set; }
        public Guid? CarrierId { get; set; }
        public Guid? SupplierId { get; set; }
        public int NumberOfItems { get; set; }
        public bool Locked { get; set; }
    }
}