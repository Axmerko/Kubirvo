namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class WoodLogListWithPerformanceDTO : WoodLogListDTO
    {
        public float Volume { get; set; }
        public double Earnings { get; set; }
    }
}