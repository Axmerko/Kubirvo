using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.Areas.Main.WoodLogList.Models;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Controllers {
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class WoodQualityController : KubirovackaController 
    {
        public WoodQualityController(KubirovackaContext context, IUserUtil userUtil, IMapper iMapper,
            IStringLocalizerFactory strFactory) 
            : base(userUtil, context, iMapper, strFactory) {
        }
        
        [CheckAccess(Permission.WoodQualities, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpGet()]
        public async Task<ActionResult<WoodQualityDTO>> GetWoodQuality(int quality)
        {
            var woodQualities = await Context.WoodQualities.SingleOrDefaultAsync(
                wq => wq.GroupId == CurrentGroup.Id && wq.Quality == quality);

            if (woodQualities == null) 
                return BadRequest(new ErrorResponse("This wood quality doesnt exists!"));
            
            return Ok(Mapper.Map<WoodQualityDTO>(woodQualities));
        }        [CheckAccess(Permission.WoodQualities, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
       
        [HttpGet("List")]
        public async Task<ActionResult<List<WoodQualityDTO>>> GetList()
        {
            var woodQualities = await Context.WoodQualities.Where(
                wq => wq.GroupId == CurrentGroup.Id && !wq.Disabled)
                .OrderBy(wq => wq.Quality)
                .ToListAsync();
            
            return Ok(Mapper.Map<List<WoodQualityDTO>>(woodQualities));
        }
        
        [CheckAccess(Permission.WoodQualities, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpPost("Form")]
        public async Task<ActionResult<WoodQualityDTO>> Form(WoodQualityDTO woodQualityDto)
        { 
            var existingItem = await Context.WoodQualities.FirstOrDefaultAsync(
                wq => wq.Quality == woodQualityDto.Quality && wq.GroupId == CurrentGroup.Id);

            if (existingItem == null)
            {
                var total = await Context.WoodQualities.CountAsync(wq => wq.GroupId == CurrentGroup.Id);
                var newWoodQuality = Mapper.Map<WoodQuality>(woodQualityDto);
                newWoodQuality.GroupId = CurrentGroup.Id;
                newWoodQuality.Quality = total + 1;
                Context.WoodQualities.Add(newWoodQuality);
            }
            else
            {
                existingItem.Name = woodQualityDto.Name;
                existingItem.Disabled = woodQualityDto.Disabled;
            }
            await Context.SaveChangesAsync();
            return Ok(woodQualityDto);
        }
        
        [CheckAccess(Permission.WoodQualities, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpPost("Grid")]
        public async Task<ActionResult<GridDTO<WoodQualityDTO>>> Grid(GridQueryDTO gridQuery)
        { 
            var queryFilter = new WoodQualityGridFilter(Context, CurrentGroup);
            var woodQualities = await queryFilter.GetFilterResult(gridQuery);
            var total = await queryFilter.GetCount(gridQuery);
            return Ok(new GridDTO<WoodQualityDTO>
            {
                Total = total,
                Items = Mapper.Map<List<WoodQualityDTO>>(woodQualities)
            });
        }

        [CheckAccess(Permission.WoodQualities, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpDelete("Delete")]
        public async Task<ActionResult> Delete(Guid id)
        {
            var item = await Context.WoodQualities.SingleOrDefaultAsync(wq => wq.Id == id &&
                                                    wq.GroupId == CurrentGroup.Id);
            if (item == null)
                return BadRequest(new ErrorResponse("This woodquality doesnt exists!"));

            Context.WoodQualities.Remove(item);
            await Context.SaveChangesAsync();
            return NoContent();
        }
    }
}