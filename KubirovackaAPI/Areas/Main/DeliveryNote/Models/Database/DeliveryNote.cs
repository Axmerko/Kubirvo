using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Helpers;
using KubirovackaAPI.Migrations;

namespace KubirovackaAPI.Areas.Main.DeliveryNote.Models.Database
{
    public class DeliveryNote
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid Id { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
        public string LicensePlate { get; set; }
        public DateTimeOffset DateOfDeparture { get; set; }
        public string ReportNumber { get; set; }
        public Guid OwnerGroupGuid { get; set; }
        public Guid OwnerUserGuid { get; set; }
        public Guid? CustomerId { get; set; }
        public Guid? CarrierId { get; set; }
        public Guid? SupplierId { get; set; }
        public bool Exported { get; set; }
        public bool Locked { get; set; }
        public string DeliveryNoteNumber { get; set; }
        
        [ForeignKey(nameof(CustomerId))]
        public Report.Models.Database.Company Customer { get; set; }
        [ForeignKey(nameof(CarrierId))]
        public Report.Models.Database.Company Carrier { get; set; }
        [ForeignKey(nameof(SupplierId))]
        public Report.Models.Database.Company Supplier { get; set; }
        [ForeignKey(nameof(OwnerGroupGuid))]
        public virtual User.Models.Database.Group OwnerGroup { get; set; }
        [ForeignKey(nameof(OwnerUserGuid))]
        public virtual User.Models.Database.User OwnerUser { get; set; }

        public virtual List<DeliveryNoteItem> DeliveryNoteItems { get; set; } = new List<DeliveryNoteItem>();
        public virtual List<DeliveryNotePhoto> DeliveryNotePhotos { get; set; } = new List<DeliveryNotePhoto>();

        public void AddItem(DeliveryNoteItem item)
        {
            DeliveryNoteItems.Add(item);
        }
        
        public void AddPhoto(DeliveryNotePhoto photo)
        {
            DeliveryNotePhotos.Add(photo);
        }

        public void RemovePhoto(DeliveryNotePhoto photo)
        {
            DeliveryNotePhotos.Remove(photo);
        }

        public void AddItems(IEnumerable<DeliveryNoteItem> items)
        {
            DeliveryNoteItems.AddRange(items);
        }

        public void SetExported(bool imported)
        {
            Exported = imported;
        }

        public void SetLocked(bool locked)
        {
            Locked = locked;
        }

        public static DeliveryNote GenerateRandom(Guid ownerUser, Guid ownerGroup)
        {
            var deliveryNote = new DeliveryNote
            {
                LicensePlate = RandomHelper.GenerateAlphanumericString(7),
                Exported = false,
                Locked = false,
                OwnerUserGuid = ownerUser,
                OwnerGroupGuid = ownerGroup,
                ReportNumber = RandomHelper.GenerateRandomNumber(10000).ToString(),
                DateOfDeparture = RandomHelper.GenerateRandomDate(365, true),
                DeliveryNoteNumber = RandomHelper.GenerateAlphanumericString(16),
                DeliveryNoteItems = new List<DeliveryNoteItem>()
            };

            for (var i = 0; i < RandomHelper.GenerateRandomNumber(40); i++)
            {
                deliveryNote.DeliveryNoteItems.Add(new DeliveryNoteItem
                {
                    Volume = RandomHelper.GenerateRandomNumber(10d),
                    DeparturePlace = RandomHelper.GenerateRandomAddress(),
                });
            }

            return deliveryNote;
        }
    }
}