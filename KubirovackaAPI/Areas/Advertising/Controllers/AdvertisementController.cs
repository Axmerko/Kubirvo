using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using FluentDateTime;
using FluentDateTimeOffset;
using KubirovackaAPI.Areas.Advertising.Enums;
using KubirovackaAPI.Areas.Advertising.Models.Database;
using KubirovackaAPI.Areas.Advertising.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Controllers;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using KubirovackaAPI.Utilities;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;
using Npgsql.EntityFrameworkCore.PostgreSQL.Query.ExpressionTranslators.Internal;
using NpgsqlTypes;

namespace KubirovackaAPI.Areas.Advertising.Controllers
{
    [Area("Advertising")]
    [ApiController]
    [Route("api/[area]/[controller]")]
    public class AdvertisementController : KubirovackaController
    {
        private readonly IEmailingUtils _emailingUtils;

        public AdvertisementController(KubirovackaContext context,
            IEmailingUtils emailingUtils, IUserUtil userUtil, IMapper iMapper, IStringLocalizerFactory strFactory)
            : base(userUtil, context, iMapper, strFactory)
        {
            _emailingUtils = emailingUtils;
        }

        /// <summary>
        /// Vytvoří reklamu
        /// </summary>
        /// <param name="adDTO">DTO reklamy</param>
        /// <returns>Vytvořenou reklamu</returns>
        [CheckAccess(Permission.ManageAds)]
        [HttpPost]
        public async Task<ActionResult<AdDTO>> CreateAd([FromForm] AdDTO adDTO)
        {
            if (adDTO.LimitCostPerDay && adDTO.MaxCostPerDay == null)
                return BadRequest(new ErrorResponse(Localizer["Maximální cena za den musí být zadána!"]));

            if (adDTO.AdContentType == AdContentType.Image && adDTO.ImageId == null)
                return BadRequest(new ErrorResponse(Localizer["Obázek musí být zvolen!"]));
            if (adDTO.AdContentType == AdContentType.Image && adDTO.DestinationUrl == null)
                return BadRequest(new ErrorResponse(Localizer["Url adresa vaší stránky musí být zadána!"]));

            if (adDTO.AdContentType == AdContentType.Html && adDTO.Html == null)
                return BadRequest(new ErrorResponse(Localizer["Html musí být zadáno!"]));

            if (adDTO.AdContentType == AdContentType.Image)
            {
                var image = await Context.Media.FirstOrDefaultAsync(m => m.Id == adDTO.ImageId);
                if (image == null)
                    return BadRequest(new ErrorResponse(Localizer["Obrázek neexistuje! Kontaktujte podporu."]));
            }

            if (!adDTO.DestinationUrl.Contains("http://") && !adDTO.DestinationUrl.Contains("https://"))
            {
                adDTO.DestinationUrl = "https://" + adDTO.DestinationUrl;
            }

            var ad = Context.Ads.Add(new Ad
            {
                Name = adDTO.Name,
                AdType = adDTO.AdType,
                LimitCostPerDay = adDTO.LimitCostPerDay,
                MaxCostPerDay = adDTO.MaxCostPerDay,
                ShowFrom = adDTO.ShowFrom ?? DateTime.UtcNow,
                AdContentType = adDTO.AdContentType,
                ImageId = adDTO.ImageId,
                DestinationUrl = adDTO.DestinationUrl,
                Html = adDTO.Html,
                OwnerGroupId = CurrentGroup.Id
            });

            await Context.SaveChangesAsync();
            var adF = ad.Entity;
            return Created(string.Empty, new AdDTO
            {
                Name = adF.Name,
                Approved = adF.Approved,
                Credits = adF.Credits,
                Enabled = adF.Enabled,
                Html = adF.Html,
                AdId = adF.Id,
                AdType = adF.AdType,
                CreatedAt = adF.CreatedAt,
                DestinationUrl = adF.DestinationUrl,
                ImageId = adF.ImageId,
                ShowFrom = adF.ShowFrom,
                AdContentType = adF.AdContentType,
                LimitCostPerDay = adF.LimitCostPerDay,
                MaxCostPerDay = adF.MaxCostPerDay
            });
        }

        /// <summary>
        /// Vrátí reklamy
        /// </summary>
        /// <returns>Vytvořenou reklamu</returns>
        [CheckAccess(Permission.ManageAds)]
        [HttpGet("Owned")]
        public async Task<ActionResult<AdDTO[]>> GetAds()
        {
            var ads = await Context.Ads.Where(l => l.OwnerGroupId == CurrentGroup.Id)
                .OrderByDescending(ad => ad.CreatedAt)
                .ToListAsync();

            return Ok(ads.Select(adF => new AdDTO
            {
                Name = adF.Name,
                Approved = adF.Approved,
                Credits = adF.Credits,
                Enabled = adF.Enabled,
                Html = adF.Html,
                AdId = adF.Id,
                AdType = adF.AdType,
                CreatedAt = adF.CreatedAt,
                DestinationUrl = adF.DestinationUrl,
                ImageId = adF.ImageId,
                ShowFrom = adF.ShowFrom,
                AdContentType = adF.AdContentType,
                LimitCostPerDay = adF.LimitCostPerDay,
                MaxCostPerDay = adF.MaxCostPerDay
            }).ToList());
        }

        /// <summary>
        /// Vrátí reklamu
        /// </summary>
        /// <param name="adId">Id reklamy</param>
        /// <returns>Vytvořenou reklamu</returns>
        [CheckAccess(Permission.ManageAds)]
        [HttpGet]
        public async Task<ActionResult<AdDTO>> GetAd(Guid adId)
        {
            var adF = await Context.Ads.FirstOrDefaultAsync(a => a.Id == adId);
            if (adF == null) return NotFound();
            if (adF.OwnerGroupId != CurrentGroup.Id) return Forbid();

            return Ok(new AdDTO
            {
                Name = adF.Name,
                Approved = adF.Approved,
                Credits = adF.Credits,
                Enabled = adF.Enabled,
                Html = adF.Html,
                AdId = adF.Id,
                AdType = adF.AdType,
                CreatedAt = adF.CreatedAt,
                DestinationUrl = adF.DestinationUrl,
                ImageId = adF.ImageId,
                ShowFrom = adF.ShowFrom,
                AdContentType = adF.AdContentType,
                LimitCostPerDay = adF.LimitCostPerDay,
                MaxCostPerDay = adF.MaxCostPerDay
            });
        }

        /// <summary>
        /// Přiřadí kredit reklamě
        /// </summary>
        /// <param name="adId">Id reklamy</param>
        /// <param name="adCredit">Částka reklamy</param>
        /// <returns></returns>
        [CheckAccess(Permission.ManageAds)]
        [HttpPatch("Credit")]
        public async Task<IActionResult> AssignCredit(Guid adId, int adCredit)
        {
            var ad = await Context.Ads.FirstOrDefaultAsync(a => a.Id == adId);
            if (ad == null) return NotFound();
            if (ad.OwnerGroupId != CurrentGroup.Id) return Forbid();

            if (adCredit > CurrentGroup.AdCredit + ad.Credits) return BadRequest(new ErrorResponse(Localizer["not.enough.credit"]));

            var diff = adCredit - ad.Credits;

            CurrentGroup.AdCredit -= diff;
            ad.Credits = adCredit;

            await Context.SaveChangesAsync();

            return NoContent();
        }

        [CheckAccess(Permission.ManageAds)]
        [HttpPatch("Name")]
        public async Task<IActionResult> PatchName (Guid adId, string name)
        {
            var ad = await Context.Ads.FirstOrDefaultAsync(a => a.Id == adId);
            if (ad == null) return NotFound();
            if (ad.OwnerGroupId != CurrentGroup.Id) return Forbid();

            ad.Name = name;
            await Context.SaveChangesAsync();

            return NoContent();
        }

        [CheckAccess(Permission.ManageAds)]
        [HttpPatch("Url")]
        public async Task<IActionResult> PatchUrl (Guid adId, string url)
        {
            var ad = await Context.Ads.FirstOrDefaultAsync(a => a.Id == adId);
            if (ad == null) return NotFound();
            if (ad.OwnerGroupId != CurrentGroup.Id) return Forbid();

            ad.DestinationUrl = url;
            await Context.SaveChangesAsync();

            return NoContent();
        }

        [CheckAccess(Permission.ManageAds)]
        [HttpPatch("LimitCostPerDay")]
        public async Task<IActionResult> PatchLimitCostPerDay (Guid adId, bool limit)
        {
            var ad = await Context.Ads.FirstOrDefaultAsync(a => a.Id == adId);
            if (ad == null) return NotFound();
            if (ad.OwnerGroupId != CurrentGroup.Id) return Forbid();

            ad.LimitCostPerDay = limit;
            await Context.SaveChangesAsync();

            return NoContent();
        }

        [CheckAccess(Permission.ManageAds)]
        [HttpPatch("MaxCostPerDay")]
        public async Task<IActionResult> PatchCostPerDay (Guid adId, int costPerDay)
        {
            var ad = await Context.Ads.FirstOrDefaultAsync(a => a.Id == adId);
            if (ad == null) return NotFound();
            if (ad.OwnerGroupId != CurrentGroup.Id) return Forbid();

            ad.MaxCostPerDay = costPerDay;
            await Context.SaveChangesAsync();

            return NoContent();
        }

        /// <summary>
        /// Aktivuje/deaktivuje reklamu
        /// </summary>
        /// <param name="adId">Id reklamy</param>
        /// <param name="enabled">Aktivováno</param>
        /// <returns></returns>
        [CheckAccess(Permission.ManageAds)]
        [HttpPatch("Enabled")]
        public async Task<IActionResult> ChangeEnabled(Guid adId, bool enabled)
        {
            var ad = await Context.Ads.FirstOrDefaultAsync(a => a.Id == adId);
            if (ad == null) return NotFound();
            if (ad.OwnerGroupId != CurrentGroup.Id) return Forbid();

            ad.Enabled = enabled;

            await Context.SaveChangesAsync();

            return NoContent();
        }

        /// <summary>
        /// Načte reklamu pro zobrazení
        /// </summary>
        /// <returns>Reklamu</returns>
        [AllowAnonymous]
        [HttpGet("Load")]
        public async Task<ActionResult<AdToDisplayDTO>> LoadAd(AdType type)
        {
            const string ownAdId = "a64b19c5-7430-4dd1-a59c-11bb856b5ef5";
            var ip = HttpContext.Request.Headers["x-Real-IP"].ToString();
            var beginningOfDay = DateTime.UtcNow.BeginningOfDay();
            var fifteenMinsAgo = DateTime.UtcNow.AddMinutes(-15);
            var hourAgo = DateTime.UtcNow.AddHours(-1);

            var ad = await Context.Ads
                .Where(a => a.Approved && a.Enabled)
                .Where(a => a.AdType == type)
                .Where(a => a.ShowFrom <= DateTime.UtcNow)
                .Select(a => new
                {
                    Ad = a,
                    SumToday = (a.AdClicks.Where(ac => ac.ClickedAt >= beginningOfDay).Sum(ac => (int?) ac.Cost) ?? 0) +
                        + (a.AdViews.Where(av => av.ViewedAt >= beginningOfDay).Sum(av => (int?) av.Cost) ?? 0),
                    SumHour = (a.AdClicks.Where(ac => ac.ClickedAt >= hourAgo).Sum(ac => (int?) ac.Cost) ?? 0) +
                        (a.AdViews.Where(av => av.ViewedAt >= hourAgo).Sum(av => (int?) av.Cost) ?? 0)
                })
                .Where(a => !a.Ad.LimitCostPerDay || a.Ad.MaxCostPerDay >= a.SumToday) // cena nepřekročila max cenu za den
                .Where(a => !a.Ad.LimitCostPerDay || a.Ad.MaxCostPerDay / 8 >= a.SumHour) // cena nepřekročila max cenu za hodinu (den/8)
                .Where(a => a.Ad.AdViews.Count(aw => aw.Ip == ip && aw.ViewedAt >= fifteenMinsAgo) == 0) // z dané ip adresy nebyla za posledních 15 min zobrazena
                .Where(a => a.Ad.Credits > a.Ad.Cpc) // reklama má dost peněz na to, aby zaplatila proklik
                .Where(a => a.Ad.Id != Guid.Parse(ownAdId)) // reklama není naše default
                .OrderBy(a => a.Ad.LimitCostPerDay) // první reklamy bez omezení na den
                .ThenByDescending(a => a.Ad.MaxCostPerDay) // první reklamy s nejvyšší cenou za den
                .Select(a => a.Ad)
                .FirstOrDefaultAsync();
            if (ad == null)
            {
                ad = await Context.Ads.Include(a => a.Image).SingleAsync(a => a.Id == Guid.Parse(ownAdId));
            }
            else
            {
                ad.Image = await Context.Media.FirstAsync(m => m.Id == ad.ImageId);
            }

            string content;
            switch (ad.AdContentType)
            {
                case AdContentType.Html:
                    content = ad.Html;
                    break;
                case AdContentType.Image:
                    var image = ad.Image;
                    content = Convert.ToBase64String(image.MediaBytes);
                    break;
                default:
                    content = ad.Html;
                    break;
            }
            return Ok(new AdToDisplayDTO
            {
                Id = ad.Id,
                Url = ad.DestinationUrl,
                ContentType = ad.AdContentType,
                Content = content
            });
        }

        /// <summary>
        /// Smaže reklamu
        /// </summary>
        /// <param name="id">Id reklamy</param>
        /// <returns></returns>
        [CheckAccess(Permission.ManageAds)]
        [HttpDelete]
        public async Task<IActionResult> Delete(Guid id)
        {
            var ad = await Context.Ads.SingleOrDefaultAsync(a => a.Id == id && a.OwnerGroupId == CurrentGroup.Id);
            if (ad == null) return NotFound(new ErrorResponse(Localizer["ad.not.found"]));

            var group = await Context.Groups.SingleAsync(g => g.Id == ad.OwnerGroupId);
            group.AdCredit += ad.Credits;

            Context.Update(group);

            if (ad.AdContentType == AdContentType.Image)
            {
                var media = await Context.Media.SingleAsync(m => m.Id == ad.ImageId);
                Context.Remove(media);
            }
            Context.Remove(ad);
            await Context.SaveChangesAsync();

            return NoContent();
        }

        [AllowAnonymous]
        [HttpPost("View")]
        public async Task<IActionResult> AddView([FromForm] Guid adId)
        {
            var ad = await Context.Ads.SingleOrDefaultAsync(a => a.Id == adId);
            if (ad == null) return NotFound();

            var ip = Request.Headers["x-Real-IP"].ToString();

            var recentView =
                await Context.AdViews.FirstOrDefaultAsync(aw =>
                    aw.AdId == adId && aw.ViewedAt >= DateTime.UtcNow.AddMinutes(-5) && aw.Ip == ip);

            var cost = recentView == null ? ad.Cpt / 1000 : 0;
            if (recentView == null)
            {
                ad.Credits -= ad.Cpt / 1000;
            }

            Context.AdViews.Add(new AdView
            {
                AdId = adId,
                Ip = ip,
                Cost = cost
            });
            
            await Context.SaveChangesAsync();

            return NoContent();
        }

        [AllowAnonymous]
        [HttpPost("Click")]
        public async Task<IActionResult> AddClick([FromForm] Guid adId)
        {
            var ad = await Context.Ads.SingleOrDefaultAsync(a => a.Id == adId);
            if (ad == null) return NotFound();

            var ip = Request.Headers["x-Real-IP"].ToString();

            var recentClick =
                await Context.AdClicks.FirstOrDefaultAsync(aw =>
                    aw.AdId == adId && aw.ClickedAt >= DateTime.UtcNow.AddMinutes(-5) && aw.Ip == ip);

            var cost = recentClick == null ? ad.Cpc : 0;

            Context.AdClicks.Add(new AdClick
            {
                AdId = adId,
                Ip = ip,
                Cost = cost
            });

            if (recentClick == null)
            {
                ad.Credits -= ad.Cpc;
            }
            
            await Context.SaveChangesAsync();

            return NoContent();
        }

        [CheckAccess(Permission.ManageAds, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [ProducesResponseType(200)]
        [HttpGet("ViewsStats")]
        public async Task<ActionResult<AdStatDTO>> GetViewsStats(DateTime from, DateTime to, Guid adId)
        {
            var ad = await Context.Ads.SingleOrDefaultAsync(a => a.Id == adId);
            if (ad == null) return NotFound();
            if (ad.OwnerGroupId != CurrentGroup.Id) return Forbid();

            var views = await Context.AdViews.CountAsync(av => av.AdId == adId && av.ViewedAt >= from && av.ViewedAt <= to);
            return Ok(new AdStatDTO(views));
        }

        [CheckAccess(Permission.ManageAds, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [ProducesResponseType(200)]
        [HttpGet("ClicksStats")]
        public async Task<ActionResult<AdStatDTO>> GetClicksStats(DateTime from, DateTime to, Guid adId)
        {
            var ad = await Context.Ads.SingleOrDefaultAsync(a => a.Id == adId);
            if (ad == null) return NotFound();
            if (ad.OwnerGroupId != CurrentGroup.Id) return Forbid();

            var clicks = await Context.AdClicks.CountAsync(av => av.AdId == adId && av.ClickedAt >= from && av.ClickedAt <= to);
            return Ok(new AdStatDTO(clicks));
        }

        [CheckAccess(Permission.ManageAds, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [ProducesResponseType(200)]
        [HttpGet("SpendingStats")]
        public async Task<ActionResult<AdStatDTO>> GetSpendingStats(DateTime from, DateTime to, Guid adId)
        {
            var ad = await Context.Ads.SingleOrDefaultAsync(a => a.Id == adId);
            if (ad == null) return NotFound();
            if (ad.OwnerGroupId != CurrentGroup.Id) return Forbid();

            var clickSpending = await Context.AdClicks.Where(av => av.AdId == adId && av.ClickedAt >= from && av.ClickedAt <= to).SumAsync(av => av.Cost);
            var viewSpending = await Context.AdViews.Where(av => av.AdId == adId && av.ViewedAt >= from && av.ViewedAt <= to).SumAsync(av => av.Cost);

            return Ok(new AdStatDTO(clickSpending + viewSpending));
        }

        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        [HttpPost("InfoMessage")]
        public async Task<IActionResult> CreateInfoMessage(InfoMessageDTO imDto)
        {
            if (!imDto.Url.Contains("http://") && !imDto.Url.Contains("https://"))
            {
                imDto.Url = "https://" + imDto.Url;
            }

            var im = Context.InfoMessages.Add(new InfoMessage
            {
                Title = imDto.Title,
                Text = imDto.Text,
                LinkText = imDto.LinkText,
                Url = imDto.Url,
                ShowUntil = imDto.ShowUntil
            });

            await Context.SaveChangesAsync();

            return Ok(im.Entity);
        }

        [AllowAnonymous]
        [HttpGet("InfoMessages")]
        public async Task<ActionResult<List<InfoMessageDTO>>> GetInfoMessages()
        {
            var ims = await Context.InfoMessages.Where(im => im.ShowUntil >= DateTime.UtcNow).ToListAsync();
            return Ok(ims);
        }

        [AllowAnonymous]
        [HttpGet("InactiveInfoMessages")]
        public async Task<ActionResult<List<InfoMessageDTO>>> GetInactiveInfoMessages()
        {
            var ims = await Context.InfoMessages.Where(im => im.ShowUntil < DateTime.UtcNow).ToListAsync();
            return Ok(ims);
        }

        [HttpDelete("InfoMessage")]
        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        public async Task<IActionResult> DeleteInfoMessage(int id)
        {
            var im = await Context.InfoMessages.FirstOrDefaultAsync(im => im.Id == id);
            if (im == null) return NotFound();

            Context.InfoMessages.Remove(im);
            await Context.SaveChangesAsync();

            return NoContent();
        }
    }
}