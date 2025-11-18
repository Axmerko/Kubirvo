using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;
using AutoMapper;
using FluentEmail.Core;
using FluentEmail.Core.Models;
using KubirovackaAPI.Areas.Mailing.Models;
using KubirovackaAPI.Areas.Mailing.Utils;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Mailing.Controllers
{
    [Area("Mailing")]
    [Route("api/[area]/[controller]")]
    public class MailingController : KubirovackaController
    {
        private readonly IConfiguration _config;
        private readonly IMailgunUtils _mailgunUtils;

        public MailingController(IUserUtil userUtil, KubirovackaContext context, IMapper mapper, IStringLocalizerFactory
            stringLocalizer, IConfiguration config, IMailgunUtils mailgunUtils) : base(userUtil, context, mapper, stringLocalizer)
        {
            _config = config;
            _mailgunUtils = mailgunUtils;
        }
        
        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        [HttpPost]
        public async Task<IActionResult> SendMails([FromForm] MailingDTO dto)
        {
            var response = await _mailgunUtils.SendMail(dto);
            if (response)
            {
                return NoContent();
            }

            return BadRequest();
        }
    }
}