using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Models;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.User.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using KubirovackaAPI.Settings;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;
using Microsoft.Extensions.Options;

namespace KubirovackaAPI.Areas.Main.User.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class LicenseController : KubirovackaController
    {
        private IUserUtil _userUtil;
        private readonly PricingOptions _pricingOptions;

        public LicenseController (KubirovackaContext context, IUserUtil userUtil, IMapper iMapper, IStringLocalizerFactory strFactory, IOptions<PricingOptions> pricingOptions) 
            : base(userUtil, context, iMapper, strFactory)
        {
            _userUtil = userUtil;
            _pricingOptions = pricingOptions.Value;
        }
        
        /// <summary>
        /// Vrátí ceny licencí
        /// </summary>
        /// <returns>Ceny licencí</returns>
        [ProducesResponseType(200)]
        [AllowAnonymous]
        [HttpGet("Pricing")]
        public ActionResult<PricingOptions> GetPrices()
        {
            return _pricingOptions;
        }

        /// <summary>
        /// Vytvoří novou licenci
        /// </summary>
        /// <param name="licenseDto">Objekt licence k vytvoření</param>
        /// <returns>Novou licenci</returns>
        /// <response code="400">Neplatný požadavek</response>
        /// <response code="201">Licence vytvořena</response>
        [ProducesResponseType(400)]
        [ProducesResponseType(201)]
        [CheckAccess(IgnoreGroup = true, Permission = Permission.SuperAdmin)]
        [HttpPost]
        public async Task<ActionResult<LicenseDTO>> CreateLicense(LicenseDTO licenseDto)
        {
            Models.Database.User userUser = null;
            if (licenseDto.UserId != null)
            {
                userUser = await Context.Users
                    .FirstOrDefaultAsync(u => u.Id == licenseDto.UserId);
                if (userUser == null) return BadRequest(
                    new ErrorResponse(Localizer["Uživatel s tímto emailem neexistuje!"]));
            }
            
            if (licenseDto.LicenseScopes.Length != 8) return BadRequest(
                new ErrorResponse(Localizer["LicenseScopes musí mít 8 znaků!"]));
            
            var license = Context.Licenses.Add(new License
            {
                UserId = userUser?.Id,
                OwnerGroupId = licenseDto.OwnerGroupId,
                ExpirationDate = licenseDto.ExpirationDate,
                StartDate = licenseDto.StartDate,
                LicenseScopes = licenseDto.LicenseScopes
            });
            if (userUser != null)
            {
                // Need new token, because the premium expiration date has changed
                userUser.JwtVersion++;
                Context.Users.Update(userUser);
            }
            await Context.SaveChangesAsync();
            var generatedLicense = await Context.Licenses.FirstAsync(l => l.Id == license.Entity.Id);
            return Created(string.Empty, Mapper.Map(generatedLicense, new LicenseDTO()));
        }
        
        /// <summary>
        /// Vrátí licence dané skupiny
        /// </summary>
        /// <returns>Licence dané skupiny</returns>
        /// <response code="200">Licence vráceny</response>
        /// <response code="204">Skupina nemá licence</response>
        /// <response code="400">Neplatný požadavek</response>
        /// <response code="403">Uživatel nemá právo licence vypsat</response>
        [ProducesResponseType(403)]
        [ProducesResponseType(400)]
        [ProducesResponseType(200)]
        [CheckAccess(Permission.ListLicenses)]
        [HttpGet("LicensesOfGroup")]
        public async Task<ActionResult<GridDTO<LicenseDTO>>> GetOwnedLicenses([FromQuery] GridQueryDTO queryDto)
        {
            var queryFilter = new LicenseGridFilter(Context, CurrentGroup);
            var licenseList = await queryFilter.GetFilterResult(queryDto);
            var total = await queryFilter.GetCount(queryDto);
            return Ok(new GridDTO<LicenseDTO>() {Total = total, 
                Items = Mapper.Map<License[], List<LicenseDTO>>(licenseList.ToArray())});
        }

        /// <summary>
        /// Vrací licenci, kterou uživatel momentálně používá
        /// </summary>
        /// <returns>Licenci, kterou uživatel momentálně používá</returns>
        /// <response code="200">Uživatel má licenci a byla vrácena.</response>
        /// <response code="204">Uživatel nemá licenci.</response>
        [ProducesResponseType(200)]
        [ProducesResponseType(204)]
        [HttpGet]
        [CheckAccess(IgnoreGroup = true)]
        public ActionResult<LicenseDTO> GetLicenseUsed()
        {
            var license = _userUtil.CurrentLicense;
            return Ok(Mapper.Map(license, new LicenseDTO()));
        }
        
        [HttpGet("{id:guid}")]
        [CheckAccess(Permission.ListLicenses, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        public async Task<ActionResult<LicenseDTO>> GetLicenseById(Guid id)
        {
            var license = await Context.Licenses.FirstAsync(l => l.Id == id &&
                                                           l.OwnerGroupId == CurrentGroup.Id);
            if (license == null) return BadRequest();
            return Ok(Mapper.Map(license, new LicenseDTO()));
        }
        
        [HttpPatch]
        [CheckAccess(Permission.AssignLicense)]
        public async Task<ActionResult<LicenseDTO>> EditLicense(LicenseDTO licenseDto)
        {
            var license = await Context.Licenses.Include(l => l.User).
                FirstAsync(l => l.Id == licenseDto.Id && l.OwnerGroupId == CurrentGroup.Id);
            
            if (license == null) return BadRequest();
            if (license.UserId == CurrentUser.Id) return BadRequest();
            
            if (_userUtil.CheckPermission(Permission.SuperAdmin))
            {
                license.ExpirationDate = licenseDto.ExpirationDate;
                license.LicenseScopes = licenseDto.LicenseScopes;
                license.StartDate = licenseDto.StartDate;
            }

            if (license.User != null)
            {
                license.User.JwtVersion++;
            }

            if (license.UserId != licenseDto.UserId && licenseDto.UserId != null)
            {
                var newLicenseUser = await Context.Users.Include(u => u.LicensesUsed)
                    .FirstAsync(u => u.Id == licenseDto.UserId);
                newLicenseUser.JwtVersion++;
                foreach (var lin in newLicenseUser.LicensesUsed)
                {
                    lin.UserId = null;
                }
            }
            
            license.UserId = licenseDto.UserId;
            await Context.SaveChangesAsync();
            
            return NoContent();
        }

        /// <summary>
        /// Odebrání license
        /// </summary>
        /// <param name="userId">ID uživatele, kterému má být odřazena license</param>
        /// <returns></returns>
        /// <response code="204">Licence přiřazena</response>
        /// <response code="400">Neplatný požadavek</response>
        /// <response code="403">Uživatel nemá právo licenci přiřadit</response>
        [ProducesResponseType(400)]
        [ProducesResponseType(204)]
        [CheckAccess(Permission.AssignLicense, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpPatch("Unassign")]
        public async Task<IActionResult> RemoveLicense([FromForm] Guid userId)
        {
            var license = await Context.Licenses.Include(l => l.OwnerGroup)
                .FirstOrDefaultAsync(l => l.UserId == userId && l.OwnerGroupId == CurrentGroup.Id);

            if (license == null || license.UserId == CurrentUser.Id) return BadRequest();
            var user = await Context.Users.FirstAsync(u => u.Id == userId);
            user.JwtVersion++;
            license.UserId = null;
            await Context.SaveChangesAsync();
            return NoContent();
        }
        
        /// <summary>
        /// Smazání license
        /// </summary>
        /// <param name="licenseId">ID license která má být smazána</param>
        /// <returns></returns>
        /// <response code="204">Licence přiřazena</response>
        /// <response code="400">Neplatný požadavek</response>
        /// <response code="403">Uživatel nemá právo licenci přiřadit</response>
        [ProducesResponseType(400)]
        [ProducesResponseType(204)]
        [CheckAccess(Permission.SuperAdmin, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpDelete]
        public async Task<IActionResult> DeleteLicense([FromForm] Guid licenseId)
        {
            var license = await Context.Licenses.Include(l => l.OwnerGroup)
                .FirstOrDefaultAsync(l => l.Id == licenseId && l.OwnerGroupId == CurrentGroup.Id);

            if (license == null|| license.UserId == CurrentUser.Id) return BadRequest();
            Context.Licenses.Remove(license);
            await Context.SaveChangesAsync();
            return NoContent();
        }
        
        /// <summary>
        /// Prodlužuje uživateli licenci
        /// </summary>
        /// <param name="id">Licence GUID</param>
        /// <param name="expirationDate">Datum expirace</param>
        /// <response code="204">Expirace změněna</response>
        /// <response code="404">Licence nenalezena</response>
        [ProducesResponseType(204)]
        [ProducesResponseType(404)]
        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        [HttpPatch("SuperExpiration")]
        public async Task<IActionResult> SuperLocale([Required(ErrorMessage = "Guid musí být vyplněno!")] Guid id,
            [Required(ErrorMessage = "Locale musí být vyplněno!")] DateTime expirationDate)
        {
            var license = await Context.Licenses.Include(l => l.User)
                .FirstOrDefaultAsync(l => l.Id == id);  
            if (license == null)
                return NotFound(new ErrorResponse(Localizer["Licence s tímto id nebyla nalezena!"]));
            license.ExpirationDate = expirationDate;

            license.User.JwtVersion++;
            
            await Context.SaveChangesAsync();
            return NoContent();
        }

        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        [HttpPatch("SuperGiveAllPremium")]
        public async Task<IActionResult> SuperGiveAllPremium()
        {
            var licenses = await Context.Licenses.Include(l => l.User).ToListAsync();
            foreach (var license in licenses)
            {
                if (license.ExpirationDate > DateTime.UtcNow)
                {
                    license.ExpirationDate = license.ExpirationDate.AddMonths(1);
                }
                else
                {
                    license.ExpirationDate = DateTime.UtcNow.AddMonths(1);
                }

                license.User.JwtVersion++;

                Context.Licenses.Update(license);
                Context.Users.Update(license.User);
            }

            await Context.SaveChangesAsync();

            return NoContent();
        }
    }
}