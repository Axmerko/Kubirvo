

using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class WoodLogListStatusController : KubirovackaController
    {
        public WoodLogListStatusController(IUserUtil userUtil, KubirovackaContext context, IMapper mapper,
            IStringLocalizerFactory stringLocalizer) : base(userUtil, context, mapper, stringLocalizer)
        {
        }
        
        [CheckAccess(Permission.None, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpGet()]
        public async Task<WoodLogListStatus[]> Get()
        {
            var statuses = await Context.WoodLogListStatuses.Where(s => s.IsGlobal
                                                                        || s.OwnerGroupId == CurrentGroup.Id).ToArrayAsync();
            return statuses;
        }
    }
}