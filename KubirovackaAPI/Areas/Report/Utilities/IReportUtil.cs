using System.Collections.Generic;
using System.Threading.Tasks;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using NPOI.SS.UserModel;

namespace KubirovackaAPI.Areas.Report.Utilities
{
    public interface IReportUtil
    {
        Task<string> GenerateXLSX(List<WoodLogList> woodLogLists, bool detailedRaws);
    }
}