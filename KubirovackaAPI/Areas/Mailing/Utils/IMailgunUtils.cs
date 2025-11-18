using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using FluentEmail.Core.Models;
using KubirovackaAPI.Areas.Mailing.Models;
using Microsoft.AspNetCore.Mvc;

namespace KubirovackaAPI.Areas.Mailing.Utils
{
    public interface IMailgunUtils
    {
        public Task<bool> SendMail(MailingDTO dto);
    }
}