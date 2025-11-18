using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.Areas.Report.Models.Database;
using KubirovackaAPI.Areas.Report.Models.DTO;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Report.Controllers
{
    [Area("Report")]
    [ApiController]
    [Route("api/[area]/[controller]")]
    public class CompanyController : KubirovackaController
    {
        public CompanyController(IUserUtil userUtil, KubirovackaContext context, IMapper mapper,
            IStringLocalizerFactory stringLocalizer) : base(userUtil, context, mapper, stringLocalizer)
        {
        }


        /// <summary>
        /// Vytvoří firmu
        /// </summary>
        /// <returns>Objekt firmy</returns>
        /// <response code="201">Firma vytvořena</response>
        /// <response code="400">Chybné parametry předány</response>
        ///
        [ProducesResponseType(201)]
        [ProducesResponseType(400)]
        [ProducesResponseType(403)]
        [HttpPost]
        [CheckAccess(Permission = Permission.Company, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        public async Task<ActionResult<CompanyDTO>> Create([FromBody] CompanyDTO companyDTO)
        {
            if (companyDTO.Name.Length == 0) return BadRequest(new ErrorResponse("Missing name"));
            if (companyDTO.Id.ToString() != "") return BadRequest(new ErrorResponse("Company may exists"));
            if (companyDTO.GroupId.ToString() != "" && companyDTO.GroupId != UserUtil.CurrentGroup.Id)
            {
                return Forbid("Bad group");
            }

            companyDTO.GroupId = UserUtil.CurrentGroup.Id;
            var company = new Company(companyDTO);
            await Context.Companies.AddAsync(company);
            await Context.SaveChangesAsync();

            return Created(string.Empty, new CompanyDTO(company));
        }

        /// <summary>
        /// Aktualizuje firmu
        /// </summary>
        /// <returns>Objekt firmy</returns>
        /// <response code="200">Firma vytvořena</response>
        /// <response code="400">Chybné parametry předány</response>
        /// <response code="403">Chyba skupiny</response>
        /// <response code="404">Firma nenalezena</response>
        [ProducesResponseType(200)]
        [ProducesResponseType(400)]
        [ProducesResponseType(403)]
        [ProducesResponseType(404)]
        [CheckAccess(Permission = Permission.Company, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpPut]
        public async Task<ActionResult<CompanyDTO>> Update([FromBody] CompanyDTO companyDTO)
        {
            if (companyDTO.Id.ToString() == "") return NotFound("Company not found");
            if (companyDTO.GroupId.ToString() != "" && companyDTO.GroupId != UserUtil.CurrentGroup.Id)
            {
                return Forbid();
            }

            var company = await Context.Companies.AsNoTracking().FirstOrDefaultAsync(c => c.Id == companyDTO.Id);

            if (company == null) return NotFound(new ErrorResponse("Company not found"));
            if (company.GroupId != UserUtil.CurrentGroup.Id) return Forbid("Bad group");

            company.Update(companyDTO);
            Context.Companies.Update(company);
            await Context.SaveChangesAsync();

            return Ok(company);
        }

        [HttpGet("companies/{id:guid}")]
        [CheckAccess(Permission.Company, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        public async Task<ActionResult<CompanyDTO>> GetCompany(Guid id)
        {
            var company = await Context.Companies.SingleOrDefaultAsync(c => c.GroupId == CurrentGroup.Id);

            return Ok(new CompanyDTO(company));
        }

        [HttpGet("Companies")]
        [CheckAccess(Permission.Company, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        public async Task<ActionResult<List<CompanyDTO>>> CompanyList(string filter)
        {
            List<Company> data;
            if (filter == null)
            {
                data = await Context.Companies
                    .Where(c => c.GroupId == CurrentGroup.Id)
                    .ToListAsync();
            }
            else
            {
                data = await Context.Companies
                    .Where(c => c.GroupId == CurrentGroup.Id)
                    .Where(c => c.Name.ToLower().StartsWith(filter.ToLower()))
                    .ToListAsync();
            }

            return Ok(data.Select(e => new CompanyDTO(e)));
        }

        [HttpDelete]
        [CheckAccess(Permission.Company, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        public async Task<IActionResult> Delete(Guid subjectId)
        {
            var subject = await Context.Companies.FirstOrDefaultAsync(s => s.Id == subjectId);
            if (subject == null) return NotFound();
            var deliveryNotesUseCompany = await Context.DeliveryNotes
                .AnyAsync(e => e.CarrierId == subject.Id || e.CustomerId == subject.Id ||
                               e.SupplierId == subject.Id);
            if (deliveryNotesUseCompany) return BadRequest("company_used_in_delivery_notes");

            Context.Companies.Remove(subject);
            await Context.SaveChangesAsync();
            return NoContent();
        }
    }
}