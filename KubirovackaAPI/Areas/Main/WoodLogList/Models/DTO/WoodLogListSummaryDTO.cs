namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class WoodLogListSummaryDTO
    {
        public int LogsQuantity { get; set; }
        public int LogsNumberOfRhizomes { get; set; }
        public float LogsVolume { get; set; }
        public int RawsQuantity { get; set; }
        public int RawsNumberOfRhizomes { get; set; }
        public float RawsVolume { get; set; }
        public float AverageWeightOfPiece { get; set; }
        public float AverageWeightOfTree { get; set; }
    }
}