using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Models;
using KubirovackaAPI.Areas.Main.User.Models.Database.Join;
using KubirovackaAPI.Areas.Main.User.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Main.User.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class GroupController : KubirovackaController
    {
        public GroupController(KubirovackaContext context ,
            IUserUtil userUtil, IMapper iMapper, IStringLocalizerFactory strFactory) 
            : base(userUtil, context, iMapper, strFactory)
        {}
        
        /// <summary>
        /// Vrací skupiny uživatele
        /// </summary>
        /// <returns>Skupiny uživatele</returns>
        /// <response code="200">Skupiny v pořádku vráceny</response>
        [ProducesResponseType(200)]
        [CheckAccess(IgnoreGroup = true)]
        [HttpGet]
        public async Task<ActionResult<GroupDTO[]>> GetGroups()
        {
            var groups = await Context.UserGroups.Where(ug => ug.UserId == CurrentUser.Id)
                .Include(ug => ug.Group)
                .Include(ug => ug.Role)
                .Select(ug => new GroupDTO
                {
                    Id = ug.Group.Id,
                    Name = ug.Group.Name,
                    GroupType = ug.Group.GroupType,
                    ParentId = ug.Group.ParentId,
                    IsHomeGroup = ug.IsHomeGroup,
                    Permissions = ug.Role.Permissions,
                    IsAdvertiser = ug.Group.IsAdvertiser,
                })
                .ToArrayAsync();
            return Ok(groups);
        }

        /// <summary>
        /// Vrátí uživatele dané skupiny
        /// </summary>
        /// <returns>Uživatele dané skupiny</returns>
        /// <response code="200">Uživatelé vráceni</response>
        /// <response code="400">Neplatný požadavek</response>
        /// <response code="403">Uživatel nemá právo uživatele vypsat</response>
        [ProducesResponseType(403)]
        [ProducesResponseType(400)]
        [ProducesResponseType(200)]
        [CheckAccess(Permission.ListMembers, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpGet("MembersGrid")]
        public async Task<ActionResult<GridDTO<UserProfileDTO>>> MembersGrid([FromQuery] GridQueryDTO gridQuery)
        {
            var queryFilter = new UserGridFilter(Context, CurrentGroup);
            var members = await queryFilter.GetFilterResult(gridQuery);
            var total = await queryFilter.GetCount(gridQuery);

            var userDtoList = new List<UserProfileDTO>();
            members.ForEach(item =>
            {
                var license = item.User.LicensesUsed.OrderByDescending(l => l.ExpirationDate).FirstOrDefault();
                DateTimeOffset? licenseEnd = null;
                if (license != null)
                {
                    licenseEnd = license.ExpirationDate;
                }
                userDtoList.Add(new UserProfileDTO
                {
                    Id = item.User.Id,
                    Email = item.User.Email,
                    FirstName = item.User.FirstName,
                    LastName = item.User.LastName,
                    Locale = item.User.Locale,
                    RegisteredAt = item.User.RegisteredAt,
                    HomeGroupId = item.User.UserGroups.FirstOrDefault(u => u.IsHomeGroup)?.GroupId,
                    LicenseEnd = licenseEnd,
                    Status = item.Status,
                });
            });
            
            return Ok(new GridDTO<UserProfileDTO> {Total = total, Items = userDtoList});
        }

        /// <summary>
        /// Vrátí uživatele dané skupiny
        /// </summary>
        /// <returns>Uživatele dané skupiny</returns>
        /// <response code="200">Uživatelé vráceni</response>
        /// <response code="400">Neplatný požadavek</response>
        /// <response code="403">Uživatel nemá právo uživatele vypsat</response>
        [ProducesResponseType(403)]
        [ProducesResponseType(400)]
        [ProducesResponseType(200)]
        [CheckAccess(Permission.ListMembers)]
        [HttpGet("Members")]
        public async Task<ActionResult<UserProfileDTO[]>> GetMembers()
        {
            var members = await Context.UserGroups.Where(ug =>
                    ug.GroupId == CurrentGroup.Id)
                .Select(ug => ug.User)
                .ToListAsync();

            var users = Mapper.Map<Models.Database.User[], UserProfileDTO[]>(members.ToArray());
            return Ok(users);
        }

        /// <summary>
        /// Nastaví status uživatele ve skupině
        /// </summary>
        /// <param name="id">Id uživatele</param>
        /// <param name="status">Status</param>
        /// <returns></returns>
        [CheckAccess(Permission.SetUserStatusInGroup, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpPatch("UserStatus")]
        public async Task<IActionResult> SetUserStatusInGroup(Guid id, UserGroupStatus status)
        {
            var userGroup = await Context.UserGroups.FirstAsync(ug => ug.UserId == id &&
                                                                      ug.GroupId == CurrentGroup.Id);
            
            if (userGroup == null) return BadRequest(Localizer["user.not.assigned.to.this.group"]);
            if (userGroup.UserId == CurrentUser.Id) return BadRequest();

            userGroup.Status = status;

            await Context.SaveChangesAsync();
            return NoContent();
        }
        
        /// <summary>
        /// Vrátí kredity na reklamy
        /// </summary>
        /// <returns>Kredity na reklamy</returns>
        [HttpGet("AdCredit")]
        [CheckAccess(Permission.ManageAds)]
        public async Task<ActionResult<int>> GetCredit()
        {
            var group = await Context.Groups.FirstAsync(g => g.Id == CurrentGroup.Id);
            return group.AdCredit;
        }
        
        /// <summary>
        /// Zapne inzerci pro skupinu
        /// </summary>
        /// <returns></returns>
        [CheckAccess(Permission.MakeGroupAdvertiser)]
        [HttpPatch("Advertiser")]
        public async Task<IActionResult> MakeAdvertiser()
        {
            var group = await Context.Groups.FirstAsync(g => g.Id == CurrentGroup.Id);
            group.IsAdvertiser = true;
            Context.Groups.Update(group);
            await Context.SaveChangesAsync();
            return NoContent();
        }
    }
}