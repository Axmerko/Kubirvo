using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace KubirovackaAPI.Areas.Main.Shared.Models.Database
{
    public class DiagnosticLog
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity), Key]
        public int Id { get; set; }
        public Guid UserId { get; set; }
        public string Message { get; set; }
        public DateTimeOffset DateTime { get; set; }
        public Source Source { get; set; }
        public Type Type { get; set; }

        public User.Models.Database.User user { get; set; }
    }

    public enum Source
    {
        Android = 1,
        Web = 2,
    }

    public enum Type
    {
        Verbose = 1,
        Warn = 2,
        Error = 3,
    }
}