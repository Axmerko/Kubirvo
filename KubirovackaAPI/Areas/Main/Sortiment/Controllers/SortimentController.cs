using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.Sortiment.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Main.Sortiment.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class SortimentController : KubirovackaController
    {
        public SortimentController(IUserUtil userUtil, KubirovackaContext context, IMapper mapper, IStringLocalizerFactory stringLocalizer) : base(userUtil, context, mapper, stringLocalizer)
        {
        }
        
        [ProducesResponseType(401)]
        [ProducesResponseType(201)]
        [CheckAccess(Permission.CreateList)]
        [HttpPost]
        public async Task<ActionResult<SortimentDTO>> Create([FromBody] CreateSortimentDTO dto)
        {
            var sortiment = new Models.Database.Sortiment(CurrentGroup.Id, CurrentUser.Id, dto.Code, dto.Name);

            await Context.Sortiments.AddAsync(sortiment);
            await Context.SaveChangesAsync();
            return CreatedAtAction(nameof(Get), new {id = sortiment.Id}, new SortimentDTO(sortiment));
        }
        
        [ProducesResponseType(200)]
        [CheckAccess(Permission.CreateList)]
        [HttpPut("{id:guid}")]
        public async Task<ActionResult<SortimentDTO>> Update(Guid id, [FromBody] CreateSortimentDTO dto)
        {
            var sortiment = await Context.Sortiments
                .Where(e => e.OwnerGroupGuid == CurrentGroup.Id)
                .SingleOrDefaultAsync(e => e.Id == id);
            if (sortiment == null) return NotFound();

            sortiment.Update(dto);

            Context.Sortiments.Update(sortiment);
            await Context.SaveChangesAsync();
            return Ok(new SortimentDTO(sortiment));
        }

        [ProducesResponseType(401)]
        [ProducesResponseType(200)]
        [CheckAccess(Permission.GetListInfo)]
        [HttpGet("{id:guid}")]
        public async Task<ActionResult<SortimentDTO>> Get(Guid id)
        {
            var sortiment = await Context.Sortiments
                .Where(e => e.OwnerGroupGuid == CurrentGroup.Id)
                .SingleOrDefaultAsync(d => d.Id == id);
            if (sortiment == null) return NotFound();

            return Ok(new SortimentDTO(sortiment));
        }
        
        [ProducesResponseType(401)]
        [ProducesResponseType(200)]
        [CheckAccess(Permission.GetListInfo)]
        [HttpGet("ByUser")]
        public async Task<ActionResult<IEnumerable<SortimentDTO>>> GetByUser()
        {
            var sortiments = await Context.Sortiments.Where(d => d.OwnerUserGuid == CurrentUser.Id).ToListAsync();

            return Ok(sortiments.Select(l => new SortimentDTO(l)));
        }
        
        [ProducesResponseType(401)]
        [ProducesResponseType(200)]
        [CheckAccess(Permission.GetListInfo)]
        [HttpGet("ByGroup")]
        public async Task<ActionResult<IEnumerable<SortimentDTO>>> GetByGroup()
        {
            var sortiments = await Context.Sortiments.Where(d => d.OwnerGroupGuid == CurrentGroup.Id).ToListAsync();

            return Ok(sortiments.Select(l => new SortimentDTO(l)));
        }
        
        [ProducesResponseType(401)]
        [ProducesResponseType(200)]
        [CheckAccess(Permission.GetListInfo)]
        [HttpGet("ByCode/{code}")]
        public async Task<ActionResult<SortimentDTO>> GetByCode(string code)
        {
            var sortiment = await Context.Sortiments
                .Where(e => e.OwnerGroupGuid == CurrentGroup.Id)
                .SingleOrDefaultAsync(d => d.Code == code);
            if (sortiment == null) return NotFound();

            return Ok(new SortimentDTO(sortiment));
        }
    }
}