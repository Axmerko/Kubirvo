﻿namespace KubirovackaAPI.Areas.Report.Models
{
    public class WoodLogReportDTO
    {
        public string Number { get; set; }
        public string Wood { get; set; }
        public string Length { get; set; }
        public string Diameter { get; set; }
        public string Sortiment { get; set; }
        public float Volume { get; set; }
        public bool IsRhizome { get; set; }
        public string Fsdu { get; set; }
    }
}