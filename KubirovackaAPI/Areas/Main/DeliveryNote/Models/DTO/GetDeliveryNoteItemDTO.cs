using KubirovackaAPI.Areas.Main.DeliveryNote.Models.Database;
using KubirovackaAPI.Areas.Main.Sortiment.Models.DTO;

namespace KubirovackaAPI.Areas.Main.DeliveryNote.Models.DTO
{
    public class GetDeliveryNoteItemDTO
    {
        public GetDeliveryNoteItemDTO(DeliveryNoteItem item)
        {
            Volume = item.Volume;
            DeparturePlace = item.DeparturePlace;

            if (item.Sortiment != null)
            {
                Sortiment = new SortimentDTO(item.Sortiment);
            }
        }
        public SortimentDTO? Sortiment { get; set; }
        public double Volume { get; set; }
        public string DeparturePlace { get; set; }
    }
}