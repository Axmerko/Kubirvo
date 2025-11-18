using System;
using KubirovackaAPI.Areas.Advertising.Enums;

namespace KubirovackaAPI.Areas.Advertising.Models.DTO
{
    public class AdToDisplayDTO
    {
        public Guid Id { get; set; }
        public string Url { get; set; }
        public AdContentType ContentType { get; set; }
        public string Content { get; set; }
    }
}