using System;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.Test.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Requirements;
using MailKit.Net.Smtp;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Localization;
using MimeKit;
using MimeKit.Text;

namespace KubirovackaAPI.Areas.Main.Test.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    [ApiController]
    public class TestController : KubirovackaController
    {
        private readonly IConfiguration _configuration;

        public TestController(KubirovackaContext context, IStringLocalizerFactory strFactory,
            IMapper iMapper, IUserUtil userUtil, IConfiguration configuration)
            : base(userUtil, context, iMapper, strFactory)
        {
            _configuration = configuration;
        }
        
        [HttpPost]
        public IActionResult Test(DateTimeOffset dto)
        {
            return Ok(dto);
        }
    }
}
