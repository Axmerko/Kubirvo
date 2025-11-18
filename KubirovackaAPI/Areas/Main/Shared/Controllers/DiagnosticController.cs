using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.Shared.Models.Database;
using KubirovackaAPI.Areas.Main.Shared.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Main.Shared.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    [ApiController]
    public class DiagnosticController : KubirovackaController
    {
        public DiagnosticController(KubirovackaContext context, IStringLocalizerFactory strFactory,
            IMapper iMapper, IUserUtil userUtil) : base(userUtil, context, iMapper, strFactory) { }
        
        [CheckAccess()]
        [HttpPost()]
        public async Task<IActionResult> Log(List<DiagnosticLogDTO> list)
        {
            list.ForEach(dm =>
            {
                Context.DiagnosticLogs.Add(new DiagnosticLog
                {
                    Message = dm.Message,
                    DateTime = DateTime.UtcNow,
                    Source = dm.Source,
                    UserId = CurrentUser.Id,
                    Type = dm.Type
                });
            });
            await Context.SaveChangesAsync();
            return NoContent();
        }

        [CheckAccess(Permission.SuperAdmin)]
        [HttpGet]
        public async Task<List<DiagnosticLogDTO>> GetLogs(Guid userId)
        {
            var result = await Context.DiagnosticLogs.Where(d => d.UserId == userId)
                .OrderByDescending(d => d.DateTime)
                .Take(300)
                .ToListAsync();
            return Mapper.Map<List<DiagnosticLogDTO>>(result);
        }
    }
}
