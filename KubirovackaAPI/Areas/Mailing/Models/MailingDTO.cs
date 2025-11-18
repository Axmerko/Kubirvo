using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using FluentEmail.Core.Models;
using Microsoft.AspNetCore.Mvc;

namespace KubirovackaAPI.Areas.Mailing.Models
{
    public class MailingDTO
    {
        [Required] public MailingTargetType TargetType { get; set; }
        public string Emails { get; set; }
        [Required] public string Subject { get; set; }
        [Required] public string Body { get; set; }
        [Required] public bool IsHtml { get; set; }
    }
}