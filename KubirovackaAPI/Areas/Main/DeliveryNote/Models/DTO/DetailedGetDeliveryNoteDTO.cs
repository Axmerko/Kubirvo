using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;

namespace KubirovackaAPI.Areas.Main.DeliveryNote.Models.DTO
{
    public class DetailedGetDeliveryNoteDTO : GetDeliveryNoteDTO
    {
        public DetailedGetDeliveryNoteDTO(Database.DeliveryNote deliveryNote, string photosUrl, string photosBucket) : base(deliveryNote)
        {
            Items = deliveryNote.DeliveryNoteItems.Select(d => new GetDeliveryNoteItemDTO(d));
            Photos = deliveryNote.DeliveryNotePhotos.Select(d => new GetDeliveryNotePhotoDTO(d, photosUrl, photosBucket));
        }
        
        public IEnumerable<GetDeliveryNoteItemDTO> Items { get; set; }
        public IEnumerable<GetDeliveryNotePhotoDTO> Photos { get; set; }
    }
}