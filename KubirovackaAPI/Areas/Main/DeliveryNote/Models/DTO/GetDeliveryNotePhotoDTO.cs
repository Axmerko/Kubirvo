using System;
using KubirovackaAPI.Areas.Main.DeliveryNote.Models.Database;

namespace KubirovackaAPI.Areas.Main.DeliveryNote.Models.DTO
{
    public class GetDeliveryNotePhotoDTO
    {
        public GetDeliveryNotePhotoDTO(DeliveryNotePhoto photo, string photosUrl, string photosBucket)
        {
            Id = photo.Id;
            FileName = photo.FileName;
            FileSize = photo.FileSize;
            FileMimeType = photo.FileMimeType;
            Url = $"{photosUrl}/{photosBucket}/{photo.FileName}";
        }
        
        public Guid Id { get; set; }
        public string FileName { get; set; }
        public long FileSize { get; set; }
        public string FileMimeType { get; set; }
        public string Url { get; set; }
    }
}