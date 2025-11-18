namespace KubirovackaAPI.Areas.Advertising.Models.DTO
{
    public class AdStatDTO
    {
        public AdStatDTO(object value)
        {
            this.Value = value;
        }
        public object Value { get; set; }
    }
}