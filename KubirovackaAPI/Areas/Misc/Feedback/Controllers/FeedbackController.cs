using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.Areas.Misc.Feedback.Models.DTO;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using KubirovackaAPI.Utilities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Misc.Feedback.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class FeedbackController : KubirovackaController
    {
        private readonly IEmailingUtils _emailingUtils;
        private readonly IConfiguration _configuration;

        public FeedbackController(IUserUtil userUtil, KubirovackaContext context, IMapper mapper, IStringLocalizerFactory stringLocalizer,
            IEmailingUtils emailingUtils, IConfiguration configuration) : base(userUtil, context, mapper, stringLocalizer)
        {
            _emailingUtils = emailingUtils;
            _configuration = configuration;
        }

        /// <summary>
        /// Přidá změtnou vazbu
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [CheckAccess(IgnoreGroup = true)]
        public async Task<IActionResult> NewFeedback(FeedbackDTO fb)
        {
            Context.Feedbacks.Add(new Models.Database.Feedback
            {
                Message = fb.Message,
                UserId = CurrentUser.Id
            });

            await Context.SaveChangesAsync();
            
            await _emailingUtils.SendNoreplyEmail(new Dictionary<string, string>
                {
                    {"Václav Kozák", "kozak.vaclav@kobrasoft.cz"},
                    {"Daniel Kozák", "kozak.daniel@kobrasoft.cz"},
                    {"Jan Kozák", "kozak.honza@gmail.com"}
                },
                "Nová zpětná vazba!",
                new DefaultEmail("Nová zpětná vazba", 
                    $"<p>{fb.Message}</p><p>Od: {CurrentUser.Email}</p><a href='{_configuration["BaseUrl"]}/" +
                    $"superadmin/feedback'>Zobrazit zpětné vazby</a>"));
            return NoContent();
        }

        [HttpGet]
        [CheckAccess(Permission.SuperAdmin)]
        public async Task<ActionResult<FeedbackDTO[]>> List(FeedbackStatus status)
        {
            var fbs = await Context.Feedbacks.Where(fb => fb.Status == status).ToArrayAsync();
            var dtos = Mapper.Map<Models.Database.Feedback[], FeedbackDTO[]>(fbs);
            foreach (var dto in dtos)
            {
                var user = await Context.Users.FirstAsync(u => u.Id == dto.UserId);
                dto.User = new UserProfileDTO
                {
                    Email = user.Email,
                    Id = dto.Id,
                    Locale = user.Locale,
                    FirstName = user.FirstName,
                    LastName = user.LastName
                };
            }
            return Ok(dtos);
        }

        [HttpGet("{id:guid}")]
        [CheckAccess(Permission.SuperAdmin)]
        public async Task<ActionResult<FeedbackDTO>> Get(Guid id)
        {
            var fb = await Context.Feedbacks.FirstOrDefaultAsync(fb => fb.Id == id);
            if (fb == null) return NotFound();
            var dto = Mapper.Map<FeedbackDTO>(fb);
            return dto;
        }
        
        [HttpPatch("Status")]
        [CheckAccess(Permission.SuperAdmin)]
        public async Task<ActionResult<FeedbackDTO>> Patch(Guid id, FeedbackStatus status)
        {
            var fb = await Context.Feedbacks.FirstOrDefaultAsync(fb => fb.Id == id);
            if (fb == null) return NotFound();
            fb.Status = status;
            Context.Update(fb);
            await Context.SaveChangesAsync();
            return Ok();
        }
    }
}