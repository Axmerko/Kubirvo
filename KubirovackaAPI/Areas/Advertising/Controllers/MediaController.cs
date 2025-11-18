using System;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Advertising.Enums;
using KubirovackaAPI.Areas.Advertising.Models.Database;
using KubirovackaAPI.Areas.Advertising.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Controllers;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using KubirovackaAPI.Utilities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Advertising.Controllers
{
    [Area("Advertising")]
    [ApiController]
    [Route("api/[area]/[controller]")]
    public class MediaController : KubirovackaController
    {
        private readonly IStringLocalizer<UserController> _localizer;
        private readonly IEmailingUtils _emailingUtils;

        public MediaController(KubirovackaContext context,
            IEmailingUtils emailingUtils, IUserUtil userUtil, IMapper iMapper, IStringLocalizerFactory strFactory) 
            : base(userUtil, context, iMapper, strFactory)
        {
            _emailingUtils = emailingUtils;
        }
        
        /// <summary>
        /// Nahraje obrázek
        /// </summary>
        /// <param name="imageBase64">Base64 obŕazku</param>
        /// <returns>Nahraný obrázek</returns>
        [CheckAccess(IgnoreGroup = true)]
        [HttpPost]
        public async Task<ActionResult<string>> UploadImage([FromForm] string imageBase64)
        {
            var media = Context.Media.Add(new Media
            {
                MediaBytes = Convert.FromBase64String(imageBase64)
            });
            await Context.SaveChangesAsync();
            return Created(string.Empty, media.Entity.Id);
        }
        
        /// <summary>
        /// Vrátí Base64 obrázek
        /// </summary>
        /// <param name="id">Id obŕazku</param>
        /// <returns>Obrázek</returns>
        [CheckAccess(IgnoreGroup = true)]
        [HttpGet("Base64")]
        public async Task<ActionResult<string>> GetImageBase64(Guid id)
        {
            var media = await Context.Media.FirstOrDefaultAsync(m => m.Id == id);
            if (media == null) return NotFound();
            return Ok(Convert.ToBase64String(media.MediaBytes));
        }
    }
}