using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.Areas.Main.WoodLogList.Enums;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using KubirovackaAPI.Utilities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;
using Microsoft.Extensions.Configuration;
using RestSharp.Extensions;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class SharedLogsListController : KubirovackaController
    {
        private readonly IEmailingUtils _emailingUtils;
        private readonly IConfiguration _configuration;

        public SharedLogsListController(KubirovackaContext context, IUserUtil userUtil, IMapper iMapper,
            IStringLocalizerFactory strFactory, IEmailingUtils emailingUtils, IConfiguration configuration)
            : base(userUtil, context, iMapper, strFactory)
        {
            _emailingUtils = emailingUtils;
            _configuration = configuration;
        }
        
        [CheckAccess(Permission.ShareList)]
        [HttpPost]
        public async Task<IActionResult> Share(ShareLogListDTO shareDto)
        {
            var woodLogListSend = new WoodLogListSend
            {
                Id = Guid.NewGuid(),
                Email = shareDto.Email,
                CreatedAt = DateTime.UtcNow,
                CreatorId = CurrentUser.Id,
            };

            // kontrola predem, protoze v dalsim foreachi se jiz zapisuji zmeny do db
            foreach (var sendId in shareDto.WoodLogListIds)
            {
                var sendCopy = await Context.LogsLists.Include(l => l.Logs).AsNoTracking().FirstOrDefaultAsync( // As no tracking vytvori kopii
                    ll => ll.Id == sendId && ll.OwnerGroupId == CurrentGroup.Id);
                if (sendCopy == null) return NotFound(new ErrorResponse(Localizer["wood.list.not.found"]));
                if (sendCopy.IsSnapshot) return BadRequest(new ErrorResponse(Localizer["Tento seznam nelze sdílet!"]));
            }
            
            await Context.WoodLogListSends.AddAsync(woodLogListSend);
            
            foreach (var sendId in shareDto.WoodLogListIds)
            {
                var sendCopy = await Context.LogsLists.Include(l => l.Logs).AsNoTracking().FirstOrDefaultAsync( // As no tracking vytvori kopii
                    ll => ll.Id == sendId && ll.OwnerGroupId == CurrentGroup.Id);

                sendCopy.Id = Guid.NewGuid();
                sendCopy.IsSnapshot = true;
                sendCopy.Version = 0;
                sendCopy.EditedFromWeb = true;
                sendCopy.RewardInCents = 0;
                sendCopy.WoodLogListSendId = woodLogListSend.Id;

                var copyLogs = sendCopy.Logs.ToList(); // pres linq, aby to nebylo pres referenci
                sendCopy.Logs.Clear(); // promazeme stare klady kvuli starym listId a id - vznikaly by duplikaty a jeste pro spatny seznam
                
                // ulozeni noveho seznamu a sdileni do db nez do seznamu vlozime klady
                await Context.LogsLists.AddAsync(sendCopy);
                await Context.SaveChangesAsync();

                var dbLogs = copyLogs.Select(l => new WoodLog
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
                    LogsListId = sendCopy.Id
                });
                
                Context.LogsListLogs.AddRange(dbLogs);
                await Context.SaveChangesAsync();
            }
            
            var receivers = new Dictionary<string, string> {{"", shareDto.Email}};
            var baseUrl = _configuration["BaseUrl"];
            var buttonLink = $"{baseUrl}/sharedLists?id={woodLogListSend.Id}";
            var userName = $"{CurrentUser.FirstName} {CurrentUser.LastName}";
            string bodyText;
            bodyText = shareDto.Message != null ? Localizer["user.share.list.with.you.with.message", userName, shareDto.Message] :
                Localizer["user.share.list.with.you", userName];
            await _emailingUtils.SendNoreplyEmail(receivers, Localizer["an.list.sharing"],
                new DefaultEmail(Localizer["an.list.sharing"], "<p>" + bodyText + "</p>" + 
                                                               $"<a href='{buttonLink}'>{Localizer["show.list"]}</a>"));
            return NoContent();
        }

        [HttpGet("List")]
        public async Task<ActionResult<List<WoodLogListSendDTO>>> List([FromQuery] Guid sendId)
        {
            string groupId = "";
            if (Request.Headers.ContainsKey("group-id"))
            {
                groupId = Request.Headers["group-id"];
            }

            var send = await Context.WoodLogListSends
                .Include(w => w.Creator)
                .Include(w => w.WoodLogLists)
                .ThenInclude(w => w.Logs)
                .Include(w => w.WoodLogLists)
                .ThenInclude(w => w.Creator)
                .FirstOrDefaultAsync(w => w.Id == sendId);
            
            if (send == null) return NotFound();

            var lists = new List<WoodLogListSendDTO>();
            
            send.WoodLogLists.ForEach(sharedList =>
            {
                var listCreator = sharedList.Creator;
                var listDto = Mapper.Map<Models.Database.WoodLogList, WoodLogListSendDTO>(sharedList);
                listDto.SharerEmail = sharedList.Creator.Email;
                listDto.SharerId = sharedList.Creator.Id;
                listDto.SharerFirstName = send.Creator.FirstName;
                listDto.SharerLastName = send.Creator.LastName;
                listDto.Volume = listDto.Logs.Sum(lll => lll.Volume);
                listDto.CreatorFistName = listCreator.FirstName;
                listDto.CreatorLastName = listCreator.LastName;
                listDto.RewardInCents = 0; // Je to údaj, který může být pro někoho citlivý, tak reaději vůbec nechci aby se na front posílal
                if (groupId.Length > 0)
                {
                    var gId = Guid.Parse(groupId);
                    var copiedListInGroup =
                        Context.LogsLists.FirstOrDefaultAsync(ll =>
                            ll.OwnerGroupId == gId && (ll.CopiedFromId == sharedList.Id || ll.Id == sharedList.Id)).Result; // Jiz zkopirovany nebo vlastni 
                    listDto.Accepted = copiedListInGroup != null; 
                }
                lists.Add(listDto);
            });
            return lists;
        }
        
        [HttpGet]
        public async Task<ActionResult<WoodLogListSendDTO>> Get(Guid listId, Guid sendId)
        {
            var send = await Context.WoodLogListSends
                .Include(w => w.Creator)
                .FirstOrDefaultAsync(s => s.Id == sendId);
            if (send == null) return NotFound("send");

            var list = await Context.LogsLists
                .Include(l => l.Logs)
                .Include(l => l.Creator)
                .FirstOrDefaultAsync(l => l.Id == listId);
            
            if (list == null) return NotFound("list");
            
            var listCreator = list.Creator;
            var listDto = Mapper.Map<Models.Database.WoodLogList, WoodLogListSendDTO>(list);
            listDto.SharerEmail = send.Creator.Email;
            listDto.SharerId = send.Creator.Id;
            listDto.SharerFirstName = send.Creator.FirstName;
            listDto.SharerLastName = send.Creator.LastName;
            listDto.Volume = listDto.Logs.Sum(lll => lll.Volume);
            listDto.CreatorFistName = listCreator.FirstName;
            listDto.CreatorLastName = listCreator.LastName;

            return listDto;
        }
        
        [CheckAccess(Permission.AcceptSharedList, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [HttpPost("Accept")]
        public async Task<IActionResult> Accept(Guid listId, Guid sendId)
        {
            var sharedList = await Context.LogsLists
                .Include(l => l.Logs)
                .AsNoTracking()
                .SingleOrDefaultAsync(w => w.Id == listId && w.IsSnapshot);
            if (sharedList == null) return NotFound();

            var sharedListOfGroup = await Context.LogsLists.FirstOrDefaultAsync(l => l.OwnerGroupId == CurrentGroup.Id && l.CopiedFromId == listId); 
            if (sharedListOfGroup != null) {
                return Conflict(
                    new ErrorResponse(Localizer["List already accepted!"]));
            }

            var copiedList = new Models.Database.WoodLogList
            {
                Id = Guid.NewGuid(),
                Name = sharedList.Name,
                Version = 0,
                CreatedAt = sharedList.CreatedAt,
                CreatorId = sharedList.CreatorId,
                EditedBy = CurrentUser.Id, // edited by nastavime na cloveka, ktery seznam prijal
                IsSnapshot = false,
                UpdatedAt = DateTime.UtcNow, // jako datum upraveni nastavime datum prijeti
                UploadedAt = DateTime.UtcNow, // jako datum nahrani nastavime datum prijeti
                CopiedFromId = sharedList.Id,
                EditedFromWeb = true,
                OwnerGroupId = CurrentGroup.Id,
                WoodLogListSendId = null, // hodnota je pouze u snapshotu
            };

            Context.LogsLists.Add(copiedList);
            await Context.SaveChangesAsync();

            var dbLogs = sharedList.Logs.Select(l => new WoodLog
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
                LogsListId = copiedList.Id
            });
                
            Context.LogsListLogs.AddRange(dbLogs);
            await Context.SaveChangesAsync();

            return NoContent();
        }
    }
}