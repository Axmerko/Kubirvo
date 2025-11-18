using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using KubirovackaAPI.Areas.Report.Models.DTO;
using KubirovackaAPI.DbContexts;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Localization;
using Wkhtmltopdf.NetCore;

namespace KubirovackaAPI.Areas.Report.Models.Generators
{
    public class DeliveryNoteGenerator
    {
        private readonly IMapper _mapper;
        private readonly Group _currentGroup;
        private KubirovackaContext Context { get; }
        private IGeneratePdf GeneratePdf { get; }
        private IStringLocalizer Localizer { get; }
        private DeliveryNoteDTO DeliveryNoteDto { get; }
        private List<WoodLogList> LogLists { get; }

        public DeliveryNoteGenerator(
            KubirovackaContext context,
            IGeneratePdf generatePdf,
            IStringLocalizer localizer,
            IMapper mapper,
            Group currentGroup,
            DeliveryNoteDTO deliveryNoteDto,
            List<WoodLogList> logLists
            )
        {
            _mapper = mapper;
            _currentGroup = currentGroup;
            Context = context;
            GeneratePdf = generatePdf;
            Localizer = localizer;
            DeliveryNoteDto = deliveryNoteDto;
            LogLists = logLists;
        }

        public Task<IActionResult> GetPdf()
        {
            Calculate();
            DeliveryNoteDto.Customer ??= new CompanyDTO();
            DeliveryNoteDto.Supplier ??= new CompanyDTO();
            return GeneratePdf.GetPdf("/Areas/Report/Views/DeliveryNote.cshtml", DeliveryNoteDto);
        }

        public Task<byte[]> GetPdfByteArray()
        {
            Calculate();
            DeliveryNoteDto.Customer ??= new CompanyDTO();
            DeliveryNoteDto.Supplier ??= new CompanyDTO();
            return GeneratePdf.GetByteArray("/Areas/Report/Views/DeliveryNote.cshtml", DeliveryNoteDto);
        }

        private void Calculate()
        {
            var totalVolume = 0.0f;
            var dtoList = new List<WoodLogReportDTO>();
            foreach (var logList in LogLists)
            {
                var list = logList.Logs.OrderBy(log => log.Number).Select(log => new WoodLogReportDTO
                    {
                        Number = log.Number.ToString(),
                        Length = log.Length.ToString(),
                        Diameter = log.Diameter.ToString(),
                        Sortiment = log.RawCategory.ToString(),
                        Volume = log.Volume,
                        Wood = Localizer[log.WoodType.ToString()],
                        IsRhizome = log.IsRhizome,
                        Fsdu = log.Fsdu
                    })
                    .ToList();

                list.ForEach(item =>
                {
                    totalVolume += item.Volume;
                });
                dtoList.AddRange(list);
            }

            
            DeliveryNoteDto.TotalVolume = totalVolume;
            DeliveryNoteDto.WoodLogs = dtoList;
            DeliveryNoteDto.M3PerLog =
                DeliveryNoteDto.WoodLogs.Count > 0 ? totalVolume / DeliveryNoteDto.WoodLogs.Count : 0;
        }
    }
}