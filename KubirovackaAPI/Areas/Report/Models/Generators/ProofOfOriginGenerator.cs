using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.WoodLogList.Enums;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using KubirovackaAPI.DbContexts;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Localization;
using Wkhtmltopdf.NetCore;

namespace KubirovackaAPI.Areas.Report.Models.Generators
{
    public class ProofOfOriginGenerator
    {
        private readonly IMapper _mapper;
        private readonly Group _currentGroup;
        private KubirovackaContext Context { get; }
        private IGeneratePdf GeneratePdf { get; }
        private IStringLocalizer Localizer { get; }
        private ProofOfOriginDTO ProofOfOriginDto { get; }
        private List<WoodLogList> LogLists { get; }

        public ProofOfOriginGenerator(
            KubirovackaContext context,
            IGeneratePdf generatePdf,
            IStringLocalizer localizer,
            IMapper mapper,
            Group currentGroup,
            ProofOfOriginDTO proofOfOriginDto,
            List<WoodLogList> logLists
            )
        {
            _mapper = mapper;
            _currentGroup = currentGroup;
            Context = context;
            GeneratePdf = generatePdf;
            Localizer = localizer;
            ProofOfOriginDto = proofOfOriginDto;
            LogLists = logLists;
        }

        public Task<IActionResult> GetPdf()
        {
            Calculate();
            return GeneratePdf.GetPdf("/Areas/Report/Views/ProofOfOrigin/ProofOfOrigin.cshtml", ProofOfOriginDto);
        }

        public Task<byte[]> GetPdfByteArray()
        {
            Calculate();
            return GeneratePdf.GetByteArray("/Areas/Report/Views/ProofOfOrigin/ProofOfOrigin.cshtml", ProofOfOriginDto);
        }

        private void Calculate()
        {
            var woodTypes = new Dictionary<WoodType, string>();
            float totalVolume = 0;
            var list = new List<WoodLogReportDTO>();
            foreach (var woodLogList in LogLists)
            {
                foreach (var woodLog in woodLogList.Logs)
                {
                    totalVolume += woodLog.Volume;
                    woodTypes[woodLog.WoodType] = Localizer[woodLog.WoodType.ToString()];
                }

                ProofOfOriginDto.TotalVolume = totalVolume.ToString("F2");
                ProofOfOriginDto.Wood = string.Join(", ", woodTypes.Values.OrderBy(x => x.ToLowerInvariant()));

                list.AddRange(woodLogList.Logs.OrderBy(log => log.Number).Select(log => new WoodLogReportDTO
                    {
                        Number = log.Number.ToString(),
                        Length = log.Length.ToString(),
                        Diameter = log.Diameter.ToString(),
                        Sortiment = log.RawCategory.ToString(),
                        Volume = log.Volume,
                        Wood = woodTypes[log.WoodType]
                    })
                    .ToList()
                );
            }
            ProofOfOriginDto.WoodLogs = list;
        }
    }
}