using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.Areas.Main.WoodLogList.Enums;
using KubirovackaAPI.Areas.Main.WoodLogList.Models;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;
using NpgsqlTypes;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class LogsListController : KubirovackaController
    {
        public LogsListController(KubirovackaContext context, IUserUtil userUtil, IMapper iMapper,
            IStringLocalizerFactory strFactory)
            : base(userUtil, context, iMapper, strFactory)
        {}

        /// <summary>
        /// Vytvoří nový seznam klád
        /// </summary>
        /// <param name="listDto">Objekt seznamu klád</param>
        /// <returns>Vytvořený seznam klád</returns>
        /// <response code="201">Seznam vytvořen</response>
        /// <response code="401">Uživatel nemá právo seznam do dané skupiny přidat</response>
        [ProducesResponseType(401)]
        [ProducesResponseType(201)]
        [CheckAccess(Permission.CreateList)]
        [HttpPost]
        public async Task<ActionResult<WoodLogListDTO>> Add([FromBody] WoodLogListDTO listDto)
        {
            var existingListById = await Context.LogsLists.FirstOrDefaultAsync(ll => ll.Id == listDto.Id);
            if (existingListById != null) return Conflict(new ErrorResponse(Localizer["Seznam s tímto ID již existuje! Nahrajte jej jako put!"]));
            
            // vytvorime novy seznam
            var dbList = new Models.Database.WoodLogList
            {
                CreatorId = CurrentUser.Id,
                Id = listDto.Id == Guid.Empty ? Guid.NewGuid() : listDto.Id,
                Name = listDto.Name,
                CreatedAt = listDto.CreatedAt,
                EditedBy = CurrentUser.Id,
                RewardType = listDto.RewardType,
                UpdatedAt = DateTime.UtcNow,
                OwnerGroupId = CurrentGroup.Id,
                RewardInCents = listDto.RewardInCents,
                Version = 0,
                IsSnapshot = false,
                EditedFromWeb = listDto.EditedFromWeb != null && listDto.EditedFromWeb.Value,
            };

            // nahrajeme novy seznam do DB, nez do nej pridame klady
            Context.LogsLists.Add(dbList);
            await Context.SaveChangesAsync();

            // premapujeme dto na databazove klady
            var dbLogs = listDto.Logs.Select(l => new WoodLog
            {
                Diameter = l.Diameter,
                Fsdu = l.Fsdu,
                Length = l.Length,
                Location = l.Location,
                Number = l.Number,
                Quality = l.Quality,
                Volume = l.Volume,
                AddedAt = l.AddedAt,
                IsRhizome = l.IsRhizome,
                RawCategory = l.RawCategory,
                WoodType = l.WoodType,
                WoodLogType = l.WoodLogType,
                LogsListId = dbList.Id
            });
            // pridame vsechny klady do db s listId vytvoreneho seznamu
            Context.LogsListLogs.AddRange(dbLogs);
            await Context.SaveChangesAsync();

            var listToReturn = new WoodLogListDTO
            {
                Id = dbList.Id,
                Name = dbList.Name,
                Version = dbList.Version ?? 0,
                CreatedAt = dbList.CreatedAt,
                RewardType = dbList.RewardType,
                UpdatedAt = dbList.UpdatedAt,
                EditedFromWeb = dbList.EditedFromWeb,
                OwnerGroupId = dbList.OwnerGroupId,
                RewardInCents = dbList.RewardInCents,
                Logs = listDto.Logs
            };
            return Created(string.Empty, listToReturn);
        }

        /// <summary>
        /// Aktualizuje Logs list
        /// </summary>
        /// <param name="id">Id seznamu k nahrazení</param>
        /// <param name="listDto">Objekt seznamu klád</param>
        /// <returns></returns>
        /// <response code="404">Seznam s tímto ID nebyl nalezen. Je nutno jej nahrát jako nový.</response>
        /// <response code="403">Uživatel nemá právo tento seznam měnit</response>
        /// <response code="204">Seznam změněn</response>
        [ProducesResponseType(403)]
        [ProducesResponseType(404)]
        [ProducesResponseType(204)]
        [CheckAccess(Permission.EditList)]
        [HttpPut("{id:Guid}")]
        public async Task<ActionResult<Guid>> Replace(Guid id, [FromBody] WoodLogListDTO listDto)
        {
            var existingList = await Context.LogsLists.Include(l => l.Logs)
                .FirstOrDefaultAsync(ll => ll.Id == id && ll.OwnerGroupId == CurrentGroup.Id);
            if (existingList == null) return NotFound(new ErrorResponse(Localizer["Seznam nebyl nalezen! Nahrajte jej jako nový!"]));
            if (existingList.IsSnapshot) return BadRequest(new ErrorResponse(Localizer["Tento seznam nelze editovat!"]));

            //TODO - android a možná i web s tím nepracuje správně (při vytvoření nového seznamu a nahrání si neinkrementuje verzi)
            // až se to opravi může se to odkomentit
            // if (existingList.Version > list.Version)
            //     return Conflict(
            //         new ErrorResponse(Localizer["Seznam byl mezi vašimi úpravami editován!"]));

            // seznam je nahran z mobilu a zaroven uz byl drive upraven z webu
            if (existingList.EditedFromWeb && (listDto.EditedFromWeb == null || listDto.EditedFromWeb == false))
            {
                // vytváříme kopii
                var copyOfList = new Models.Database.WoodLogList
                {
                    CreatorId = CurrentUser.Id,
                    Id = Guid.NewGuid(),
                    Name = listDto.Name + " (kopie) - " + DateTime.UtcNow,
                    CreatedAt = listDto.CreatedAt,
                    EditedBy = CurrentUser.Id,
                    RewardType = listDto.RewardType,
                    UpdatedAt = DateTime.UtcNow,
                    OwnerGroupId = CurrentGroup.Id,
                    RewardInCents = listDto.RewardInCents,
                    Version = 0,
                    IsSnapshot = false,
                    EditedFromWeb = false,
                };

                // nahrajeme seznam do db nez do nej nahrajeme klady
                Context.LogsLists.Add(copyOfList);
                await Context.SaveChangesAsync();

                // premapujeme dto na databazove klady
                var dbLogs = listDto.Logs.Select(l => new WoodLog
                {
                    Diameter = l.Diameter,
                    Fsdu = l.Fsdu,
                    Length = l.Length,
                    Location = l.Location,
                    Number = l.Number,
                    Quality = l.Quality,
                    Volume = l.Volume,
                    AddedAt = l.AddedAt,
                    IsRhizome = l.IsRhizome,
                    RawCategory = l.RawCategory,
                    WoodType = l.WoodType,
                    WoodLogType = l.WoodLogType,
                    LogsListId = copyOfList.Id
                });

                // pridame klady do vytvoreneho seznamu
                Context.LogsListLogs.AddRange(dbLogs);

                // Ulozime klady
                await Context.SaveChangesAsync();
                return copyOfList.Id;
            }

            //TODO - android a možná i web s tím nepracuje správně (při vytvoření nového seznamu a nahrání si neinkrementuje verzi)
            Context.LogsListLogs.RemoveRange(existingList.Logs);
            await Context.SaveChangesAsync();

            //existingList.Version = existingList.Version + 1 ?? 0;
            existingList.UpdatedAt = DateTime.UtcNow;
            existingList.EditedBy = CurrentUser.Id;
            existingList.Name = listDto.Name;
            existingList.RewardType = listDto.RewardType;
            existingList.RewardInCents = listDto.RewardInCents;
            existingList.EditedFromWeb = listDto.EditedFromWeb ?? false;

            // premapujeme dto na databazove klady
            var dbLogsExistingList = listDto.Logs.Select(l => new WoodLog
            {
                Diameter = l.Diameter,
                Fsdu = l.Fsdu,
                Length = l.Length,
                Location = l.Location,
                Number = l.Number,
                Quality = l.Quality,
                Volume = l.Volume,
                AddedAt = l.AddedAt,
                IsRhizome = l.IsRhizome,
                RawCategory = l.RawCategory,
                WoodType = l.WoodType,
                WoodLogType = l.WoodLogType,
                LogsListId = existingList.Id
            });

            // pridame klady do vytvoreneho sezsnamu
            Context.LogsListLogs.AddRange(dbLogsExistingList);

            // Ulozime klady
            await Context.SaveChangesAsync();
            return existingList.Id;
        }

        [ProducesResponseType(403)]
        [ProducesResponseType(404)]
        [ProducesResponseType(204)]
        [CheckAccess(Permission.EditList, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpPatch()]
        public async Task<IActionResult> Update(WoodLogListDTO list)
        {
            var existingList = await Context.LogsLists.FirstOrDefaultAsync(
                ll => ll.Id == list.Id && ll.OwnerGroupId == CurrentGroup.Id);
            if (existingList == null) return NotFound(new ErrorResponse(Localizer["Seznam nebyl nalezen!"]));

            if (existingList.IsSnapshot) return BadRequest(new ErrorResponse(Localizer["Tento seznam nelze editovat!"]));

            existingList.EditedBy = CurrentUser.Id;
            Context.LogsLists.Update(Mapper.Map(list, existingList));
            existingList.EditedBy = CurrentUser.Id;
            await Context.SaveChangesAsync();
            return NoContent();
        }

        [CheckAccess(Permission.ChangeListStatus, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpPatch("Status")]
        public async Task<IActionResult> PatchStatus(Guid listId, int statusId)
        {
            var status = await Context.WoodLogListStatuses
                .FirstOrDefaultAsync(s => s.Id == statusId &&
                                          (s.IsGlobal || s.OwnerGroupId == CurrentGroup.Id));
            if (status == null) return BadRequest("invalid.status");

            var list = await Context.LogsLists.FirstOrDefaultAsync(l =>
                l.Id == listId && l.OwnerGroupId == CurrentGroup.Id);
            if (list == null) return BadRequest(new ErrorResponse(Localizer["Seznam nebyl nalezen!"]));

            list.StatusId = statusId;
            Context.LogsLists.Update(list);
            await Context.SaveChangesAsync();

            return NoContent();
        }

        /// <summary>
        /// Vrací seznamy uživatele stručně
        /// </summary>
        /// <returns>Seznamy klád</returns>
        /// <response code="200">Vráceno pole seznamů</response>
        [CheckAccess(IgnoreGroup = true)]
        [ProducesResponseType(200)]
        [HttpPost("GridPersonal")] // TODO: zmenit na get
        public async Task<ActionResult<GridDTO<WoodLogListWithPerformanceDTO>>> GetGridPersonal([FromBody] GridQueryDTO gridQuery)
        {
            var queryFilter = new WoodLogListPersonalGridFilter(Context, CurrentUser);
            var items = await queryFilter.GetFilterResult(gridQuery);
            var total = await queryFilter.GetCount(gridQuery);
            return Ok(new GridDTO<WoodLogListWithPerformanceDTO> {Total = total, Items = items});
        }

        /// <summary>
        /// Maže seznam
        /// </summary>
        /// <returns></returns>
        /// <response code="204">Seznam smazán</response>
        /// <response code="404">Seznam nenalezen</response>
        /// <response code="403">Uživatel na toto nemá v dané skupině právo</response>
        [CheckAccess(Permission.DeleteList, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [ProducesResponseType(204)]
        [ProducesResponseType(404)]
        [HttpDelete]
        public async Task<IActionResult> Delete(Guid id)
        {
            var list = await Context.LogsLists.FirstOrDefaultAsync(l => l.Id == id);
            if (list == null) return NotFound();
            if (list.IsSnapshot) return BadRequest(new ErrorResponse(Localizer["Tento seznam nelze smazat!"]));
            if (list.OwnerGroupId != CurrentGroup.Id) return Forbid();
            Context.LogsLists.Remove(list);
            await Context.SaveChangesAsync();
            return NoContent();
        }

        /// <summary>
        /// Vrací informace o seznamu
        /// </summary>
        /// <returns>Informace o seznamu</returns>
        /// <response code="200">Informace o seznamu vráceny</response>
        /// <response code="404">Seznam nenalezen</response>
        /// <response code="403">Uživatel na toto nemá právo</response>
        [CheckAccess(Permission.GetListInfo, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [ProducesResponseType(200)]
        [ProducesResponseType(404)]
        [ProducesResponseType(403)]
        [HttpGet]
        public async Task<ActionResult<WoodLogListDTO>> Get(Guid logsListId)
        {
            var list = await Context.LogsLists.Include(ll => ll.Logs)
                .Include(ll => ll.Status)
                .FirstOrDefaultAsync(ll => ll.Id == logsListId);
            if (list == null) return NotFound();
            if (list.OwnerGroupId != CurrentGroup.Id) return Forbid();

            var woodQualities = await Context.WoodQualities.Where(wq =>
                wq.GroupId == CurrentGroup.Id).ToListAsync();

            var woodQualityDict = new Dictionary<int, string>();
            woodQualities.ForEach(wq => woodQualityDict.Add(wq.Quality, wq.Name));

            var listDto = Mapper.Map<Models.Database.WoodLogList, WoodLogListDTO>(list);
            listDto.StatusDto = new WoodLogListStatusDTO
            {
                Id = list.Status.Id,
                CustomName = list.Status.CustomName,
                IsGlobal = list.Status.IsGlobal,
                StatusType = list.Status.StatusType,
                OwnerGroupId = list.Status.OwnerGroupId
            };
            var position = 1;
            foreach (var woodLogDto in listDto.Logs)
            {
                if (woodQualityDict.ContainsKey(woodLogDto.Quality))
                    woodLogDto.QualityName = woodQualityDict[woodLogDto.Quality];
                woodLogDto.Position = position;
                position++;
            }
            return Ok(listDto);
        }

        /// <summary>
        /// Vrací sumář seznamu
        /// </summary>
        /// <returns>Sumář seznamu</returns>
        /// <response code="200">Vrácen sumář</response>
        /// <response code="404">Seznam nenalezen</response>
        /// <response code="403">Uživatel na toto nemá právo</response>
        [CheckAccess(Permission.GetSummary, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [ProducesResponseType(200)]
        [ProducesResponseType(404)]
        [ProducesResponseType(403)]
        [HttpGet("Summary")]
        public async Task<ActionResult<WoodLogListSummaryDTO>> GetSummary(Guid logsListId)
        {
            var list = await Context.LogsLists.FirstOrDefaultAsync(ll => ll.Id == logsListId);
            if (list == null) return NotFound();
            if (list.OwnerGroupId != CurrentGroup.Id) return Forbid();
            var logsQuantity = await Context.LogsListLogs.Where(ll => ll.LogsListId == logsListId)
                .Where(ll => ll.WoodLogType == WoodLogType.Log)
                .CountAsync(ll => true);
            var logsRzsQuantity = await Context.LogsListLogs.Where(ll => ll.LogsListId == logsListId)
                .Where(ll => ll.WoodLogType == WoodLogType.Log)
                .Where(ll => ll.IsRhizome)
                .CountAsync(ll => true);
            var logsVolume = await Context.LogsListLogs.Where(ll => ll.LogsListId == logsListId)
                .Where(ll => ll.WoodLogType == WoodLogType.Log)
                .SumAsync(ll => ll.Volume);
            var rawsQuantity = await Context.LogsListLogs.Where(ll => ll.LogsListId == logsListId)
                .Where(ll => ll.WoodLogType == WoodLogType.Raw)
                .CountAsync(ll => true);
            var rawsRzsQuantity = await Context.LogsListLogs.Where(ll => ll.LogsListId == logsListId)
                .Where(ll => ll.WoodLogType == WoodLogType.Raw)
                .Where(ll => ll.IsRhizome)
                .CountAsync(ll => true);
            var rawsVolume = await Context.LogsListLogs.Where(ll => ll.LogsListId == logsListId)
                .Where(ll => ll.WoodLogType == WoodLogType.Raw)
                .SumAsync(ll => ll.Volume);

            var totalQuantity = logsQuantity + rawsQuantity;
            var totalVolume = logsVolume + rawsVolume;
            var totalRzsQuantity = logsRzsQuantity + rawsRzsQuantity;
            var avWeightOfPc = totalVolume / totalQuantity;
            var avWeightOfTree = totalRzsQuantity == 0 ? 0 : totalVolume / totalRzsQuantity;

            var summary = new WoodLogListSummaryDTO
            {
                LogsQuantity = logsQuantity,
                LogsVolume = logsVolume,
                LogsNumberOfRhizomes = logsRzsQuantity,
                RawsQuantity = rawsQuantity,
                RawsVolume = rawsVolume,
                RawsNumberOfRhizomes = rawsRzsQuantity,
                AverageWeightOfPiece = avWeightOfPc,
                AverageWeightOfTree = avWeightOfTree
            };
            return Ok(summary);
        }

        /// <summary>
        /// Vygeneruje nový náhodné seznamy klád
        /// </summary>
        /// <param name="userId">ID vlastníka seznamu</param>
        /// <param name="groupId">ID skupiny seznamu</param>
        /// <param name="listsCount">Počet seznamů</param>
        /// <returns>Vytvořené seznamy klád</returns>
        /// <response code="201">Seznam vytvořen</response>
        /// <response code="400">Počet seznamů musí být větší než 0</response>
        /// <response code="404">Uživatel, nebo skupina neexistuje</response>
        [ProducesResponseType(201)]
        [ProducesResponseType(400)]
        [ProducesResponseType(404)]
        [CheckAccess(IgnoreGroup = true, Permission = Permission.SuperAdmin)]
        [HttpPost("RandomLists")]
        public async Task<ActionResult<WoodLogListDTO[]>> GenerateRandomLists([FromForm] Guid userId,
            [FromForm] Guid groupId, [FromForm] int listsCount)
        {

            var user = await Context.Users.FirstOrDefaultAsync(u => u.Id == userId);
            var group = await Context.Groups.FirstOrDefaultAsync(g => g.Id == groupId);
            if (user == null || group == null)
                return NotFound(new ErrorResponse(Localizer["Uživatel, nebo skupina " +
                                                             "neexistuje"]));
            if (listsCount < 1) return BadRequest(new ErrorResponse(Localizer["Počet seznamů musí být větší než 0!"]));

            const int listDateRangeInHours = 4 * 365 * 24;

            var lists = new List<Models.Database.WoodLogList>();

            for (var i = 0; i < listsCount; i++)
            {
                var random = new Random();
                var listCreationDateSub = random.Next(listDateRangeInHours);
                var listCreateTime = DateTime.UtcNow.AddHours(-listCreationDateSub);
                var listId = Guid.NewGuid();
                var list = new Models.Database.WoodLogList
                {
                    Creator = user,
                    Id = listId,
                    CreatedAt = listCreateTime,
                    Name = "Vygenerovaný seznam " + listCreateTime,
                    RewardType = RewardType.RewardForCubicMeter,
                    OwnerGroupId = group.Id,
                    RewardInCents = random.Next(8500, 35000)
                };
                var logs = new List<WoodLog>();
                for (var z = 0; z <= random.Next(10, 100); z++)
                {
                    var logType = (WoodLogType) random.Next(0, 2);

                    var log = new WoodLog
                    {
                        Fsdu = random.Next(100, 1000) + "C" + random.Next(1, 20) + "A",
                        Location = new NpgsqlPoint(random.Next(48632181, 50705066) / 1000000D,
                            random.Next(12286796, 19142431) / 1000000D),
                        Number = z,
                        Quality = random.Next(1, 7),
                        Volume = random.Next(1, 7) / 10f,
                        AddedAt = listCreateTime.AddHours(random.Next(0, listCreationDateSub)),
                        IsRhizome = random.Next(0, 2) != 0,
                        WoodType = (WoodType) random.Next(0, 18),
                        LogsListId = listId,
                        WoodLogType = logType
                    };

                    if (logType == WoodLogType.Log)
                    {
                        log.Diameter = random.Next(14, 40);
                        log.Length = random.Next(40, 180) / 10f;
                    }
                    else
                    {
                        log.RawCategory = random.Next(0, 9);
                    }

                    logs.Add(log);
                }

                list.Logs = logs;
                lists.Add(list);
            }

            Context.LogsLists.AddRange(lists);
            await Context.SaveChangesAsync();
            var listsToReturn = Mapper.Map<Models.Database.WoodLogList[], WoodLogListDTO[]>(lists.ToArray());
            return Created(string.Empty, listsToReturn);
        }

        /// <summary>
        /// Vrací seznamy skupiny
        /// </summary>
        /// <returns>Seznamy skupiny</returns>
        /// <response code="200">Seznamy skupiny vráceny</response>
        [CheckAccess(IgnoreGroup = false, Permission = Permission.GetLists)]
        [ProducesResponseType(200)]
        [HttpPost("GridGroup")] // TODO: zmenit na GET
        public async Task<ActionResult<GridDTO<WoodLogListWithPerformanceAndCreatorDTO>>> GridGroup([FromBody] GridQueryDTO gridQuery)
        {
            var queryFilter = new WoodLogListGridFilter(Context, CurrentGroup);
            var items = await queryFilter.GetFilterResult(gridQuery);
            var total = await queryFilter.GetCount(gridQuery);
            return Ok(new GridDTO<WoodLogListWithPerformanceAndCreatorDTO> {Total = total, Items = items});
        }

        [CheckAccess(Permission.GetLists, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpGet("List")]
        public async Task<ActionResult<WoodLogListDTO[]>> List(string filter)
        {
            var logListsQuery = Context.LogsLists
                .Where(ll => !ll.IsSnapshot)
                .Where(ll => ll.OwnerGroupId == CurrentGroup.Id);

            logListsQuery = logListsQuery.OrderByDescending(ll => ll.CreatedAt);

            if (!string.IsNullOrEmpty(filter))
            {
                logListsQuery = logListsQuery.Where(ll => ll.Name.ToLower().Contains(filter));
            }

            var logLists = await logListsQuery.Take(30).ToListAsync();
            var logs = Mapper.Map<Models.Database.WoodLogList[], WoodLogListDTO[]>(logLists.ToArray());
            return Ok(logs);
        }

        [CheckAccess(Permission.None, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpGet("ListPersonal")]
        public async Task<ActionResult<WoodLogListDTO[]>> ListPersonal(string filter)
        {
            var logListsQuery = Context.LogsLists
                .Where(ll => !ll.IsSnapshot)
                .Where(ll => ll.OwnerGroupId == CurrentGroup.Id)
                .Where(ll => ll.CreatorId == CurrentUser.Id);

            logListsQuery = logListsQuery.OrderByDescending(ll => ll.CreatedAt);

            if (!string.IsNullOrEmpty(filter))
            {
                logListsQuery = logListsQuery.Where(ll => ll.Name.ToLower().Contains(filter));
            }

            var logLists = await logListsQuery.Take(30).ToListAsync();
            var logs = Mapper.Map<Models.Database.WoodLogList[], WoodLogListDTO[]>(logLists.ToArray());
            return Ok(logs);
        }
    }
}