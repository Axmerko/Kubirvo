using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace KubirovackaAPI.Areas.Main.DeliveryNote.Models.Database
{
    public class DeliveryNotePhoto
    {
        public DeliveryNotePhoto(string fileName, long fileSize, string fileMimeType)
        {
            FileName = fileName;
            FileSize = fileSize;
            FileMimeType = fileMimeType;
        }

        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid Id { get; set; }
        public string FileName { get; set; }
        public long FileSize { get; set; }
        public string FileMimeType { get; set; }
        public Guid DeliveryNoteId { get; set; }
        
        [ForeignKey(nameof(DeliveryNoteId))]
        public virtual DeliveryNote DeliveryNote { get; set; }
    }
}