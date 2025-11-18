﻿ using System;
  using System.Collections.Generic;
  using System.IO;
  using System.Linq;
  using System.Net.Mime;
  using System.Threading.Tasks;
  using AutoMapper;
  using KubirovackaAPI.Areas.Main.User.Enums;
  using KubirovackaAPI.Areas.Main.User.Utilities;
  using KubirovackaAPI.Areas.Main.WoodLogList.Enums;
  using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
  using KubirovackaAPI.Areas.Report.Models;
  using KubirovackaAPI.Areas.Report.Models.DTO;
  using KubirovackaAPI.Areas.Report.Models.Generators;
  using KubirovackaAPI.Areas.Report.Utilities;
  using KubirovackaAPI.DbContexts;
  using KubirovackaAPI.Models;
  using KubirovackaAPI.Requirements;
  using KubirovackaAPI.Utilities;
  using Microsoft.AspNetCore.Authorization;
  using Microsoft.AspNetCore.Hosting;
  using Microsoft.AspNetCore.Http;
  using Microsoft.AspNetCore.Mvc;
  using Microsoft.EntityFrameworkCore;
  using Microsoft.Extensions.Localization;
  using NPOI.SS.UserModel;
  using NPOI.SS.Util;
  using NPOI.XSSF.UserModel;
  using Wkhtmltopdf.NetCore;
 using Wkhtmltopdf.NetCore.Options;

//https://github.com/fpanaccia/Wkhtmltopdf.NetCore
namespace KubirovackaAPI.Areas.Report.Controllers
{
    [Area("Report")]
    [ApiController]
    [Route("api/[area]/[controller]")]
    public class ReportController : KubirovackaController
    {
        private readonly GeneratePdf _generatePdf;
        private IWebHostEnvironment _hostingEnvironment;
        private readonly IReportUtil _reportUtil;

        public ReportController (KubirovackaContext context, IGeneratePdf generatePdf, IWebHostEnvironment hostingEnvironment
            , IUserUtil userUtil, IMapper iMapper, IStringLocalizerFactory strFactory, IReportUtil reportUtil)
            : base(userUtil, context, iMapper, strFactory)
        {
            _generatePdf = (GeneratePdf) generatePdf;
            _hostingEnvironment = hostingEnvironment;
            _reportUtil = reportUtil;
        }

        /// <summary>
        /// Generuje XLSX přehled seznamu
        /// </summary>
        /// <param name="listId">Id seznamu</param>
        /// <returns>XLSX přehled seznamu</returns>
        /// <response code="200">XLSX přehled vytvořen</response>
        /// <response code="404">Seznam s tímto ID nenalezen</response>
        /// <response code="403">Tento seznam nenáleží dané skupině</response>
        [ProducesResponseType(typeof(FileStreamResult), StatusCodes.Status200OK)]
        [ProducesAttribute("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")]
        [ProducesResponseType(404)]
        [ProducesResponseType(403)]
        [CheckAccess(Permission = Permission.GetOverviewXLSX)]
        [HttpPost("OverviewXLSX")]
        public async Task<IActionResult> OverviewXLSX(List<Guid> listIds, bool detailedRaws)
        {
            var woodLogLists = await Context.LogsLists.Include(ll => ll.Logs)
                .Where(ll => listIds.Contains(ll.Id) && ll.OwnerGroupId == CurrentGroup.Id)
                .ToListAsync();
            if (woodLogLists == null || woodLogLists.Count == 0) return NotFound(new ErrorResponse(Localizer["Seznam s tímto ID neexistuje!"]));

            var fileName = await _reportUtil.GenerateXLSX(woodLogLists, detailedRaws);

            Response.Headers["Content-Type"] = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
            Response.Headers["Content-Disposition"] = $"attachment; filename={fileName.Split("/")[1]}";

            var result = PhysicalFile(Path.Combine(_hostingEnvironment.ContentRootPath, fileName),
                "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
            return result;
        }

        /// <summary>
        /// Generuje XLSX přehled sdíleného seznamu
        /// </summary>
        /// <param name="listId">Id seznamu</param>
        /// <returns>XLSX přehled sdíleného seznamu</returns>
        /// <response code="200">XLSX přehled vytvořen</response>
        /// <response code="404">Seznam s tímto ID nenalezen</response>
        [ProducesResponseType(typeof(FileStreamResult), StatusCodes.Status200OK)]
        [ProducesAttribute("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")]
        [ProducesResponseType(404)]
        [AllowAnonymous]
        [HttpPost("OverviewSharedXLSX")]
        public async Task<IActionResult> OverviewSharedXLSX(Guid listId, bool detailedRaws)
        {
            var list = await Context.LogsLists
                .Include(w => w.Logs)
                .FirstOrDefaultAsync(w => w.Id == listId && w.IsSnapshot);

            if (list == null) return NotFound(new ErrorResponse(Localizer["Seznam s tímto ID neexistuje!"]));

            var woodLogLists = new List<WoodLogList> {list};
            var fileName = await _reportUtil.GenerateXLSX(woodLogLists, detailedRaws);

            Response.Headers["Content-Type"] = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
            Response.Headers["Content-Disposition"] = $"attachment; filename={fileName.Split("/")[1]}";

            var result = PhysicalFile(Path.Combine(_hostingEnvironment.ContentRootPath, fileName),
                "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
            return result;
        }

        [HttpPost]
        // [Produces(MediaTypeNames.Application.Pdf)]
        [ProducesAttribute(MediaTypeNames.Application.Pdf)]
        [ProducesResponseType(typeof(FileStreamResult), StatusCodes.Status200OK)]
        [CheckAccess(IgnoreGroup = true, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [Route("ProofOfOrigin")]
        public async Task<IActionResult> ProofOfOrigin([FromBody] ProofOfOriginDTO data)
        {
            if (data.WoodLogsIds.Count == 0) return BadRequest(new ErrorResponse("This list doesnt exists!"));

            var logLists = await Context.LogsLists.Where(ll => ll.OwnerGroupId == CurrentGroup.Id && data.WoodLogsIds.Contains(ll.Id))
                .Include(ll => ll.Logs).ToListAsync();

            if (logLists == null || logLists.Count == 0) return BadRequest(new ErrorResponse("This list doesnt exists!"));

            var proofOfOriginGenerator = new ProofOfOriginGenerator(Context, _generatePdf, Localizer, Mapper, CurrentGroup, data, logLists);

            _generatePdf.SetConvertOptions(new ConvertOptions()
            {
                PageMargins = new Margins(10, 10, 10, 10),
                FooterSpacing = 1,
                FooterHtml = Url.Action("Footer", "Html", null, Request.Scheme)
            });

            var fileStream = await proofOfOriginGenerator.GetPdfByteArray();
            return File(fileStream, "application/pdf", "DPD-" + logLists[0].Name + ".pdf");
        }

        [HttpPost]
        // [Produces(MediaTypeNames.Application.Pdf)]
        [ProducesAttribute(MediaTypeNames.Application.Pdf)]
        [ProducesResponseType(typeof(FileStreamResult), StatusCodes.Status200OK)]
        [CheckAccess(IgnoreGroup = true, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [Route("DeliveryNote")]
        public async Task<IActionResult> DeliveryNote([FromBody] DeliveryNoteDTO data)
        {
            if (data.WoodLogsIds.Count == 0) return BadRequest(new ErrorResponse("This list doesnt exists!"));

            var logLists = await Context.LogsLists.Where(ll => ll.OwnerGroupId == CurrentGroup.Id && data.WoodLogsIds.Contains(ll.Id))
                .Include(ll => ll.Logs).ToListAsync();

            if (logLists == null || logLists.Count == 0) return BadRequest(new ErrorResponse("This list doesnt exists!"));

            var generator = new DeliveryNoteGenerator(Context, _generatePdf, Localizer, Mapper, CurrentGroup, data, logLists);

            _generatePdf.SetConvertOptions(new ConvertOptions()
            {
                PageMargins = new Margins(10, 10, 10, 10),
                FooterSpacing = 1,
                FooterHtml = Url.Action("Footer", "Html", null, Request.Scheme)
            });

            //Response.Headers["Content-Disposition"] = $"attachment; filename=DL-{logLists[0].Name}.pdf";
            var fileStream = await generator.GetPdfByteArray();
            return File(fileStream, "application/pdf", "DL-" + logLists[0].Name + ".pdf");
        }
    }
}