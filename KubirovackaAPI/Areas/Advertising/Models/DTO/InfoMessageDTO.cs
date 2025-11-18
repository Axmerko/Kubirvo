using System;

namespace KubirovackaAPI.Areas.Advertising.Models.DTO
{
    public class InfoMessageDTO
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Text { get; set; }
        public string LinkText { get; set; }
        public string Url { get; set; }
        public DateTimeOffset ShowUntil { get; set; }
    }
}