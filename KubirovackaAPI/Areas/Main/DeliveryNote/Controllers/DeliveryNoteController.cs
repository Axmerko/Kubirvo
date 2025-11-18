using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.DeliveryNote.Models.Database;
using KubirovackaAPI.Areas.Main.DeliveryNote.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Helpers;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Localization;
using Minio;
using Minio.AspNetCore;
using Minio.DataModel.Args;

namespace KubirovackaAPI.Areas.Main.DeliveryNote.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class DeliveryNoteController : KubirovackaController
    {
        private readonly MinioClient _minioClient;
        private readonly string _deliveryNotesBucket;
        private readonly string _deliveryNotesFilesUrl;

        public DeliveryNoteController(IUserUtil userUtil, KubirovackaContext context, IMapper mapper, IStringLocalizerFactory stringLocalizer, MinioClient minioClient,
            IConfiguration configuration)
            : base(userUtil, context, mapper, stringLocalizer)
        {
            _minioClient = minioClient;
            _deliveryNotesBucket = configuration["FileHost:Buckets:DeliveryNotes"];
            _deliveryNotesFilesUrl = "http://" + configuration["FileHost:Endpoint"];
        }

        [ProducesResponseType(401)]
        [ProducesResponseType(201)]
        [CheckAccess(Permission.CreateList)]
        [HttpPost]
        public async Task<ActionResult<GetDeliveryNoteDTO>> Create([FromBody] CreateDeliveryNoteDTO dto)
        {
            var list = new Models.Database.DeliveryNote
            {
                Id = dto.Guid,
                LicensePlate = dto.LicensePlate,
                DateOfDeparture = dto.DateOfDeparture,
                ReportNumber = dto.ReportNumber,
                OwnerGroupGuid = CurrentGroup.Id,
                OwnerUserGuid = CurrentUser.Id,
                CustomerId = dto.CustomerId,
                CarrierId = dto.CarrierId,
                SupplierId = dto.SupplierId,
                DeliveryNoteNumber = dto.DeliveryNoteNumber
            };

            if (dto.DeliveryNoteItemDtos != null)
            {
                var usedSortiments = dto.DeliveryNoteItemDtos
                    .Where(e => e != null && e.SortimentId != null)
                    .Select(e => e.SortimentId)
                    .Distinct()
                    .Select(e => e!.Value);

                var dbUsedSortiments = Context.Sortiments
                    .Where(e => e.OwnerGroupGuid == CurrentGroup.Id)
                    .Where(e => usedSortiments.Contains(e.Id));

                var missingSortiments = usedSortiments
                    .Except(dbUsedSortiments.Select(e => e.Id))
                    .ToList();

                if (missingSortiments.Any())
                {
                    return BadRequest(new ErrorResponse(Localizer["Sortiments {0} don't exist!",
                        string.Join(", ", missingSortiments)]));
                }
            }

            var deliveryNoteWithSameNumberExists = await Context.DeliveryNotes
                .Where(e => e.OwnerGroupGuid == CurrentGroup.Id)
                .Where(e => e.DeliveryNoteNumber == dto.DeliveryNoteNumber)
                .AnyAsync();

            if (deliveryNoteWithSameNumberExists)
            {
                return BadRequest(new ErrorResponse(Localizer["Delivery note {0} already exists!", dto.DeliveryNoteNumber]));
            }

            if (dto.DeliveryNoteItemDtos != null)
            {
                list.AddItems(dto.DeliveryNoteItemDtos.Select(d => new DeliveryNoteItem
                {
                    SortimentId = d.SortimentId,
                    Volume = d.Volume,
                    DeparturePlace = d.DeparturePlace
                }));
            }

            await Context.DeliveryNotes.AddAsync(list);
            await Context.SaveChangesAsync();
            return Created(string.Empty, new GetDeliveryNoteDTO(list));
        }

        [ProducesResponseType(401)]
        [ProducesResponseType(201)]
        [CheckAccess(Permission.CreateList)]
        [HttpPatch("{id:guid}/locked")]
        public async Task<ActionResult<GetDeliveryNoteDTO>> ChangeLocked([FromBody] UpdateLockedDTO dto)
        {
            var list = await Context.DeliveryNotes
                .Where(e => e.OwnerGroupGuid == CurrentGroup.Id)
                .SingleOrDefaultAsync(e => e.Id == dto.Id);
            if (list == null) return NotFound();

            list.SetLocked(dto.Locked);

            await Context.SaveChangesAsync();
            return Created(string.Empty, new GetDeliveryNoteDTO(list));
        }

        [ProducesResponseType(401)]
        [ProducesResponseType(200)]
        [CheckAccess(Permission.GetListInfo)]
        [HttpGet("{id:guid}")]
        public async Task<ActionResult<DetailedGetDeliveryNoteDTO>> Get(Guid id)
        {
            var list = await Context.DeliveryNotes
                .Where(e => e.OwnerGroupGuid == CurrentGroup.Id)
                .Include(d => d.DeliveryNoteItems)
                .ThenInclude(e => e.Sortiment)
                .Include(d => d.DeliveryNotePhotos)
                .SingleOrDefaultAsync(d => d.Id == id);

            if (list == null)
            {
                return NotFound();
            }

            list.SetExported(true);
            await Context.SaveChangesAsync();

            return Ok(new DetailedGetDeliveryNoteDTO(list, _deliveryNotesFilesUrl, _deliveryNotesBucket));
        }

        [ProducesResponseType(401)]
        [ProducesResponseType(200)]
        [CheckAccess(Permission.GetListInfo)]
        [HttpGet("ByUser")]
        public async Task<ActionResult<IEnumerable<GetDeliveryNoteDTO>>> GetByUser(bool onlyNotImported)
        {
            var listsQuery = Context.DeliveryNotes.Where(d => d.OwnerUserGuid == CurrentUser.Id);
            if (onlyNotImported)
            {
                listsQuery = listsQuery.Where(l => !l.Exported);
            }

            var lists = await listsQuery.Include(e => e.DeliveryNoteItems).ToListAsync();

            return Ok(lists.Select(l => new GetDeliveryNoteDTO(l)));
        }

        [ProducesResponseType(401)]
        [ProducesResponseType(200)]
        [CheckAccess(Permission.GetListInfo)]
        [HttpGet("ByGroup")]
        public async Task<ActionResult<IEnumerable<GetDeliveryNoteDTO>>> GetByGroup(bool onlyNotImported)
        {
            var listsQuery = Context.DeliveryNotes.Where(d => d.OwnerGroupGuid == CurrentGroup.Id);
            if (onlyNotImported)
            {
                listsQuery = listsQuery.Include(e => e.DeliveryNoteItems).Where(l => !l.Exported);
            }

            var lists = await listsQuery.ToListAsync();

            return Ok(lists.Select(l => new GetDeliveryNoteDTO(l)));
        }

        [ProducesResponseType(401)]
        [ProducesResponseType(201)]
        [CheckAccess(Permission.CreateList)]
        [HttpPost("GenerateRandom")]
        public async Task<ActionResult<IEnumerable<Guid>>> GenerateRandom([FromBody] int count)
        {
            var deliveryNotes = new List<Models.Database.DeliveryNote>();
            for (var i = 0; i < count; i++)
            {
                deliveryNotes.Add(Models.Database.DeliveryNote.GenerateRandom(CurrentUser.Id, CurrentGroup.Id));
            }

            Context.DeliveryNotes.AddRange(deliveryNotes);
            await Context.SaveChangesAsync();

            return Created(string.Empty, deliveryNotes.Select(e => e.Id));
        }

        [ProducesResponseType(401)]
        [ProducesResponseType(201)]
        [CheckAccess(Permission.CreateList)]
        [HttpPost("{id:guid}/photos")]
        public async Task<ActionResult<GetDeliveryNotePhotoDTO>> AddPhoto(Guid id, IFormFile file)
        {
            var deliveryNote = await Context.DeliveryNotes
                .Where(e => e.OwnerGroupGuid == CurrentGroup.Id)
                .SingleOrDefaultAsync(e => e.Id == id);

            if (deliveryNote == null)
                return NotFound();

            // if file type is other than jpg or png, return bad request
            if (file.ContentType != "image/jpeg" && file.ContentType != "image/png")
                return BadRequest(new ErrorResponse(Localizer["File type is not supported!"]));

            // if file size is more than 5MB, return bad request
            if (file.Length > 10 * 1024 * 1024)
                return BadRequest(new ErrorResponse(Localizer["File size is too big!"]));

            var extension = file.ContentType == "image/jpeg" ? ".jpg" : ".png";
            var photoName = Guid.NewGuid() + extension;

            await using (var stream = file.OpenReadStream())
            {
                var putObjectArgs = new PutObjectArgs()
                    .WithBucket(_deliveryNotesBucket)
                    .WithFileName(photoName)
                    .WithStreamData(stream)
                    .WithObjectSize(file.Length)
                    .WithContentType(file.ContentType);
                await _minioClient.PutObjectAsync(putObjectArgs);

            }
            
            var photo = new DeliveryNotePhoto(photoName, file.Length, file.ContentType);
            deliveryNote.AddPhoto(photo);
            await Context.SaveChangesAsync();

            return Created($"{_deliveryNotesFilesUrl}/{_deliveryNotesBucket}/{photoName}", new GetDeliveryNotePhotoDTO(photo, _deliveryNotesFilesUrl, _deliveryNotesBucket));
        }
        
        [ProducesResponseType(401)]
        [ProducesResponseType(200)]
        [CheckAccess(Permission.DeleteList)]
        [HttpDelete("{id:guid}/photos/{photoId:guid}")]
        public async Task<ActionResult> DeletePhoto(Guid id, Guid photoId)
        {
            var deliveryNote = await Context.DeliveryNotes
                .Where(e => e.OwnerGroupGuid == CurrentGroup.Id)
                .Include(e => e.DeliveryNotePhotos)
                .SingleOrDefaultAsync(e => e.Id == id);

            if (deliveryNote == null)
                return NotFound();

            var photo = deliveryNote.DeliveryNotePhotos.SingleOrDefault(e => e.Id == photoId);
            if (photo == null)
                return NotFound();

            var removeArgs = new RemoveObjectArgs()
                .WithBucket(_deliveryNotesBucket)
                .WithObject(photo.FileName);
            await _minioClient.RemoveObjectAsync(removeArgs);

            deliveryNote.RemovePhoto(photo);
            await Context.SaveChangesAsync();

            return Ok();
        }
        
    }
}