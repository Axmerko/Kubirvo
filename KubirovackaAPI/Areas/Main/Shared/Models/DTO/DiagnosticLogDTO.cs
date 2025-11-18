using System;
using KubirovackaAPI.Areas.Main.Shared.Models.Database;
using Type = KubirovackaAPI.Areas.Main.Shared.Models.Database.Type;

namespace KubirovackaAPI.Areas.Main.Shared.Models.DTO
{
    public class DiagnosticLogDTO
    {
        public string Message { get; set; }
        public Source Source { get; set; }
        public Type Type { get; set; }
        public DateTimeOffset DateTime { get; set; }
    }
}