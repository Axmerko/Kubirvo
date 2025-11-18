using System.Collections.Generic;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class GraphDataDto
    {
        public List<string> GraphValuesX { get; set; }
        public List<double> GraphValuesY { get; set; }

        public GraphDataDto()
        {
            GraphValuesX = new List<string>();
            GraphValuesY = new List<double>();
        } 
    }
}