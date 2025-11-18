using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Main.User.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    [ApiController]
    public class RoleController : KubirovackaController
    {
        public RoleController(KubirovackaContext context, 
            IUserUtil userUtil, IMapper iMapper, IStringLocalizerFactory strFactory) 
            : base(userUtil, context, iMapper, strFactory)
        { }
        
        /// <summary>
        /// Vrací role s jejich permisema
        /// </summary>
        /// <returns>Role</returns>
        [HttpGet("List")]
        [CheckAccess(Permission = Permission.GetRoles)]
        public async Task<ActionResult<List<RoleDTO>>> GetRoleList()
        {
            var roles = await Context.Roles.Where(r => r.IsGlobal).AsNoTracking().ToListAsync();

            var rolesDTO = Mapper.Map<List<RoleDTO>>(roles);
            rolesDTO.ForEach(role =>
            {

                role.Name = role.RoleType == RoleType.Employee ? Localizer["Employee"] :
                    role.RoleType == RoleType.Owner ? Localizer["Administrator"] : role.Name;

                role.Permissions[0] = false;
            });
            return Ok(rolesDTO);   
        }
        
        /// <summary>
        /// Vrací role s jejich permisema
        /// </summary>
        /// <returns>Role</returns>
        [HttpPatch("Permission")]
        [CheckAccess(Permission = Permission.SuperAdmin)]
        public async Task<IActionResult> PatchRolePermissions(Guid roleId, int permissionIndex, bool allowed)
        {
            var role = await Context.Roles.FirstOrDefaultAsync(r => r.RoleId == roleId);
            if (role == null) return NotFound();
            role.Permissions[permissionIndex] = allowed;
            Context.Roles.Update(role);
            await Context.SaveChangesAsync();
            return NoContent();   
        }
    }
}