namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class WoodLogListStatDTO
    {
        public double Value { get; set; }

        public WoodLogListStatDTO(double value)
        {
            Value = value;
        }
    }
}