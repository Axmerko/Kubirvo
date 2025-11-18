using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using FluentDateTime;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.Areas.Main.WoodLogList.Enums;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Enums;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class LogsListStatsController : KubirovackaController
    {
        public LogsListStatsController(KubirovackaContext context, IUserUtil userUtil, IMapper iMapper,
            IStringLocalizerFactory strFactory)
            : base(userUtil, context, iMapper, strFactory)
        {
            // Force Czech culture for date formatting and mainly for weeks to start on Monday
            ForceCzechCulture();
        }
        
        /// <summary>
        /// Forces the current culture to Czech (cs-CZ). Mainly used to ensure that the week starts on Monday.
        /// </summary>
        private static void ForceCzechCulture()
        {
            CultureInfo.CurrentCulture = new CultureInfo("cs-CZ");
            CultureInfo.CurrentUICulture = new CultureInfo("cs-CZ");
        }

        /// <summary>
        /// Vrací statistiky těžby uživatele
        /// </summary>
        /// <returns>Statistiky těžby uživatele</returns>
        /// <response code="200">Vráceny statistiky</response>
        [CheckAccess(IgnoreGroup = true, Permission = Permission.None)]
        [ProducesResponseType(200)]
        [HttpGet("PerformanceStats")]
        public async Task<ActionResult<WoodLogListStatDTO>> GetPerformanceStats(DateTime from, DateTime to)
        {
            var volume = await Context.LogsLists.Where(ll => ll.Creator.Id == CurrentUser.Id && !ll.IsSnapshot && ll.CopiedFromId == null)
                .Include(ll => ll.Logs)
                .Select(c => c.Logs.Where(l => l.AddedAt.Value.UtcDateTime >= from.ToUniversalTime() && l.AddedAt.Value.UtcDateTime <= to.ToUniversalTime()).Sum(lll => lll.Volume))
                .SumAsync(ll => ll);
            return Ok(new WoodLogListStatDTO(volume));
        }

        /// <summary>
        /// Vrací statistiky těžby skupiny
        /// </summary>
        /// <returns>Statistiky těžby skupiny</returns>
        /// <response code="200">Vráceny statistiky</response>
        [CheckAccess(Permission.GetPerformanceStats)]
        [ProducesResponseType(200)]
        [HttpGet("GroupPerformanceStats")]
        public async Task<ActionResult<WoodLogListStatDTO>> GetGroupPerformanceStats(DateTime from, DateTime to)
        {
            var volume = await Context.LogsLists.Where(ll => ll.OwnerGroupId == CurrentGroup.Id && !ll.IsSnapshot)
                .Include(ll => ll.Logs)
                .Select(c => c.Logs.Where(l => l.AddedAt.Value.UtcDateTime >= from.ToUniversalTime() && l.AddedAt.Value.UtcDateTime <= to.ToUniversalTime()).Sum(lll => lll.Volume))
                .SumAsync(ll => ll);
            return Ok(new WoodLogListStatDTO(volume));
        }

        /// <summary>
        /// Vrací statistiky výdělků uživatele
        /// </summary>
        /// <returns>Statistiky výdělků uživatele</returns>
        /// <response code="200">Vráceny statistiky</response>
        [CheckAccess(IgnoreGroup = true, Permission = Permission.None)]
        [ProducesResponseType(200)]
        [HttpGet("EarningsStats")]
        public async Task<ActionResult<WoodLogListStatDTO>> GetEarningsStats(DateTime from, DateTime to)
        {
            var earnings = await Context.LogsLists.Where(ll => ll.Creator.Id == CurrentUser.Id && !ll.IsSnapshot && ll.CopiedFromId == null)
                .Include(ll => ll.Logs)
                .Select(c =>
                    c.Logs.Where(lll => lll.AddedAt.Value.UtcDateTime >= from.ToUniversalTime() && lll.AddedAt.Value.UtcDateTime <= to.ToUniversalTime())
                        .Sum(lll => lll.Volume * lll.WoodLogList.RewardInCents))
                .SumAsync(ll => ll);

            var result = new WoodLogListStatDTO(earnings);
            return Ok(result);
        }

        /// <summary>
        /// Vrací statistiky výdělků skupiny
        /// </summary>
        /// <returns>Statistiky výdělků skupiny</returns>
        /// <response code="200">Vráceny statistiky</response>
        [CheckAccess(Permission.GetEarningsStats)]
        [ProducesResponseType(200)]
        [HttpGet("GroupEarningsStats")]
        public async Task<ActionResult<WoodLogListStatDTO>> GetGroupEarningsStats(DateTime from, DateTime to)
        {
            var earnings = await Context.LogsLists.Where(ll => ll.OwnerGroupId == CurrentGroup.Id && !ll.IsSnapshot)
                .Include(ll => ll.Logs)
                .Select(c =>
                    c.Logs.Where(lll => lll.AddedAt.Value.UtcDateTime >= from.ToUniversalTime() && lll.AddedAt.Value.UtcDateTime <= to.ToUniversalTime())
                        .Sum(lll => lll.Volume * lll.WoodLogList.RewardInCents))
                .SumAsync(ll => ll);

            var result = new WoodLogListStatDTO(earnings);
            return Ok(result);
        }

        /// <summary>
        /// Vrací statistiky těžby uživatele
        /// </summary>
        /// <returns>Statistiky těžby uživatele</returns>
        /// <response code="200">Vráceny statistiky</response>
        [CheckAccess(IgnoreGroup = true, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [ProducesResponseType(200)]
        [HttpGet("PerformanceGraphData")]
        public async Task<ActionResult<GraphDataDto>> GetPerformanceGraphData(StatsTimespan timespan)
        {
            var result = await GetGraphData(GraphDataType.Performance, timespan);
            return Ok(result);
        }

        /// <summary>
        /// Vrací statistiky těžby skupiny
        /// </summary>
        /// <returns>Statistiky těžby skupiny</returns>
        /// <response code="200">Vráceny statistiky</response>
        [CheckAccess(Permission.GetPerformanceStats, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [ProducesResponseType(200)]
        [HttpGet("GroupPerformanceGraphData")]
        public async Task<ActionResult<GraphDataDto>> GetGroupPerformanceGraphData(StatsTimespan timespan)
        {
            var result = await GetGraphData(GraphDataType.Performance, timespan, true);
            return Ok(result);
        }

        /// <summary>
        /// Vrací statistiky výdělků uživatele
        /// </summary>
        /// <returns>Statistiky výdělků uživatele</returns>
        /// <response code="200">Vráceny statistiky</response>
        [CheckAccess(IgnoreGroup = true, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [ProducesResponseType(200)]
        [HttpGet("EarningsGraphData")]
        public async Task<ActionResult<GraphDataDto>> GetEarningsGraphData(StatsTimespan timespan)
        {
            var result = await GetGraphData(GraphDataType.Earnings, timespan);
            return Ok(result);
        }

        /// <summary>
        /// Vrací statistiky výdělků skupiny
        /// </summary>
        /// <returns>Statistiky výdělků skupiny</returns>
        /// <response code="200">Vráceny statistiky</response>
        [CheckAccess(Permission = Permission.GetEarningsStats, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [ProducesResponseType(200)]
        [HttpGet("GroupEarningsGraphData")]
        public async Task<ActionResult<GraphDataDto>> GetGroupEarningsGraphData(StatsTimespan timespan)
        {
            var result = await GetGraphData(GraphDataType.Earnings, timespan, true);
            return Ok(result);
        }

        /// <summary>
        /// Vrací statistiky těžby skupiny pro jednotlivé členy
        /// </summary>
        /// <returns>Statistiky těžby skupiny pro jednotlivé členy</returns>
        /// <response code="200">Vráceny statistiky</response>
        [CheckAccess(Permission.GetPerformanceStats, LicenseScopeType = LicenseScopeType.DefaultFunctions)]
        [ProducesResponseType(200)]
        [HttpGet("GroupPerformanceStatsPerMember")]
        public async Task<ActionResult<GraphDataDto>> GetGroupPerformanceStatsPerMember(StatsTimespan timespan)
        {
            DateTime from, to;
            switch (timespan)
            {
                case StatsTimespan.ThisWeek:
                    from = DateTime.UtcNow.FirstDayOfWeek().BeginningOfDay();
                    to = DateTime.UtcNow.EndOfWeek();
                    break;
                case StatsTimespan.ThisMonth:
                    from = DateTime.UtcNow.FirstDayOfMonth().BeginningOfDay();
                    to = DateTime.UtcNow.EndOfMonth();
                    break;
                case StatsTimespan.ThisYear:
                    from = DateTime.UtcNow.FirstDayOfYear().BeginningOfDay();
                    to = DateTime.UtcNow.EndOfYear();
                    break;
                case StatsTimespan.SinceTheBeginningOfTime:
                    from = DateTime.MinValue;
                    to = DateTime.MaxValue;
                    break;
                default:
                    from = DateTime.MinValue;
                    to = DateTime.MaxValue;
                    break;
            }

                var query = "SELECT \"Email\", cast(round(cast(sum(LLL.\"Volume\") as numeric), 2) as double precision)"
            + " AS volume_sum FROM \"LogsLists\""
            + " JOIN \"Users\" ON \"LogsLists\".\"CreatorId\" = \"Users\".\"Id\" JOIN \"LogsListLogs\" LLL on"
            + " \"LogsLists\".\"Id\" = LLL.\"LogsListId\" WHERE \"IsSnapshot\" = false AND \"OwnerGroupId\" = '{0}' AND \"AddedAt\" > '{1}'" +
            " AND \"AddedAt\" < '{2}' GROUP BY \"Email\" ORDER BY \"volume_sum\" DESC";

            query = string.Format(query, CurrentGroup.Id, from.ToString("yyyy-MM-dd HH:mm:ss"), to.ToString("yyyy-MM-dd HH:mm:ss"));

            await using (var command = Context.Database.GetDbConnection().CreateCommand())
            {
                Context.Database.OpenConnection();
                command.CommandText = query;
                var result = command.ExecuteReader();
                var dto = new GraphDataDto();

                while (result.Read())
                {
                    dto.GraphValuesX.Add((string) result["Email"]);
                    dto.GraphValuesY.Add((double) result["volume_sum"]);
                }

                result.Close();

                return Ok(dto);
            }
        }

        private async Task<GraphDataDto> GetGraphData(GraphDataType graphType, StatsTimespan timespan, bool forGroup = false)
        {
            DateTime from;
            DateTime to;
            var ownerOrUserId = forGroup ? CurrentGroup.Id : CurrentUser.Id;

            var graphData = new GraphDataDto();
            var query = "SELECT CAST(ROUND(CAST(SUM(public.\"LogsListLogs\".\"Volume\") as NUMERIC), 2) as DOUBLE PRECISION) as volume," +
                    " CAST(ROUND(CAST((SUM(public.\"LogsListLogs\".\"Volume\" * public.\"LogsLists\".\"RewardInCents\")) as NUMERIC), 2) as DOUBLE PRECISION) as earnings," +
                    " CAST(EXTRACT({0} FROM public.\"LogsListLogs\".\"AddedAt\") AS INTEGER) AS dayOfPeriod" +
                    " FROM public.\"LogsListLogs\"" +
                    " JOIN public.\"LogsLists\" on public.\"LogsLists\".\"Id\" = public.\"LogsListLogs\".\"LogsListId\"" +
                    " WHERE public.\"LogsLists\".\"IsSnapshot\" = FALSE AND public.\"LogsLists\".\"{1}\" = '{2}'" +
                    " {3} " +
                    "AND public.\"LogsListLogs\".\"AddedAt\" >= '{4}'" +
                    " AND public.\"LogsListLogs\".\"AddedAt\" <= '{5}' GROUP BY dayOfPeriod ORDER BY dayOfPeriod";

            var ownerColumn = forGroup ? "OwnerGroupId" : "CreatorId";
            var dontIncludeShared = forGroup ? "" : " AND public.\"LogsLists\".\"CopiedFromId\" IS NULL";
                switch (timespan)
            {
                case StatsTimespan.ThisWeek:
                    from = DateTime.UtcNow.FirstDayOfWeek().BeginningOfDay();
                    to = DateTime.UtcNow.EndOfWeek();
                    query = string.Format(query, "ISODOW", ownerColumn, ownerOrUserId, dontIncludeShared, from.ToString("yyyy-MM-dd HH:mm:ss"),
                        to.ToString("yyyy-MM-dd HH:mm:ss"));

                    await using (var command = Context.Database.GetDbConnection().CreateCommand())
                    {
                        Context.Database.OpenConnection();
                        command.CommandText = query;
                        var result = command.ExecuteReader();
                        var dict = new Dictionary<int, double>();
                        if (graphType == GraphDataType.Performance)
                        {
                            while (result.Read())
                            {
                                dict.Add((int) result["dayOfPeriod"], (double) result["volume"]);
                            }
                        }
                        else
                        {
                            while (result.Read())
                            {
                                dict.Add((int) result["dayOfPeriod"], (double) result["earnings"]);
                            }
                        }

                        result.Close();

                        foreach (var i in Enumerable.Range(1, 7).ToArray())
                        {
                            graphData.GraphValuesX.Add(Localizer[((MyDayOfWeek) i).ToString()]);
                            graphData.GraphValuesY.Add(dict.TryGetValue(i, out var val)
                                ? val
                                : 0);
                        }
                    }

                    break;
                case StatsTimespan.ThisMonth:
                    from = DateTime.UtcNow.FirstDayOfMonth().BeginningOfDay();
                    to = DateTime.UtcNow.EndOfMonth();

                    query = string.Format(query, "DAY", ownerColumn, ownerOrUserId, dontIncludeShared, from.ToString("yyyy-MM-dd HH:mm:ss"),
                        to.ToString("yyyy-MM-dd HH:mm:ss"));

                    await using (var command = Context.Database.GetDbConnection().CreateCommand())
                    {
                        Context.Database.OpenConnection();
                        command.CommandText = query;
                        var result = command.ExecuteReader();
                        var dict = new Dictionary<int, double>();
                        if (graphType == GraphDataType.Performance)
                        {
                            while (result.Read())
                            {
                                dict.Add((int) result["dayOfPeriod"], (double) result["volume"]);
                            }
                        }
                        else
                        {
                            while (result.Read())
                            {
                                dict.Add((int) result["dayOfPeriod"], (double) result["earnings"]);
                            }
                        }

                        result.Close();

                        foreach (var i in Enumerable.Range(1, to.Day).ToArray())
                        {
                            graphData.GraphValuesX.Add(i.ToString());
                            graphData.GraphValuesY.Add(dict.TryGetValue(i, out var val)
                                ? val
                                : 0);
                        }
                    }

                    break;
                case StatsTimespan.ThisYear:
                    from = DateTime.UtcNow.FirstDayOfYear().BeginningOfDay();
                    to = DateTime.UtcNow.EndOfYear();

                    query = string.Format(query, "MONTH", ownerColumn, ownerOrUserId, dontIncludeShared, from.ToString("yyyy-MM-dd HH:mm:ss"),
                        to.ToString("yyyy-MM-dd HH:mm:ss"));

                    await using (var command = Context.Database.GetDbConnection().CreateCommand())
                    {
                        Context.Database.OpenConnection();
                        command.CommandText = query;
                        var result = command.ExecuteReader();
                        var dict = new Dictionary<int, double>();
                        if (graphType == GraphDataType.Performance)
                        {
                            while (result.Read())
                            {
                                dict.Add((int) result["dayOfPeriod"], (double) result["volume"]);
                            }
                        }
                        else
                        {
                            while (result.Read())
                            {
                                dict.Add((int) result["dayOfPeriod"], (double) result["earnings"]);
                            }
                        }

                        result.Close();

                        foreach (var i in Enumerable.Range(1, 12).ToArray())
                        {
                            graphData.GraphValuesX.Add(i.ToString());
                            graphData.GraphValuesY.Add(dict.TryGetValue(i, out var val)
                                ? val
                                : 0);
                        }
                    }

                    break;
                case StatsTimespan.SinceTheBeginningOfTime:
                    WoodLog oldestLogDate;
                    if (forGroup)
                    {
                        oldestLogDate = await Context.LogsListLogs.Include(lll => lll.WoodLogList)
                            .Where(lll => lll.WoodLogList.OwnerGroupId == ownerOrUserId)
                            .OrderBy(lll => lll.AddedAt).FirstOrDefaultAsync();
                    }
                    else
                    {
                        oldestLogDate = await Context.LogsListLogs.Include(lll => lll.WoodLogList)
                            .Where(lll => lll.WoodLogList.Creator.Id == ownerOrUserId)
                            .OrderBy(lll => lll.AddedAt).FirstOrDefaultAsync();
                    }

                    if (oldestLogDate != null)
                    {
                        from = oldestLogDate.AddedAt?.Date ?? DateTime.MinValue;
                    }
                    else
                    {
                        from = DateTime.MinValue;
                    }

                    to = DateTime.UtcNow;

                    query = string.Format(query, "YEAR", ownerColumn, ownerOrUserId, dontIncludeShared, from.ToString("yyyy-MM-dd HH:mm:ss"),
                        to.ToString("yyyy-MM-dd HH:mm:ss"));

                    await using (var command = Context.Database.GetDbConnection().CreateCommand())
                    {
                        Context.Database.OpenConnection();
                        command.CommandText = query;
                        var result = command.ExecuteReader();
                        var dict = new Dictionary<int, double>();
                        if (graphType == GraphDataType.Performance)
                        {
                            while (result.Read())
                            {
                                dict.Add((int) result["dayOfPeriod"], (double) result["volume"]);
                            }
                        }
                        else
                        {
                            while (result.Read())
                            {
                                dict.Add((int) result["dayOfPeriod"], (double) result["earnings"]);
                            }
                        }

                        result.Close();

                        foreach (var i in Enumerable.Range(from.Year, to.Year - from.Year + 1).ToArray())
                        {
                            graphData.GraphValuesX.Add(i.ToString());
                            graphData.GraphValuesY.Add(dict.TryGetValue(i, out var val)
                                ? val
                                : 0);
                        }
                    }

                    break;
            }

            return graphData;

//            var volume = await Context.LogsLists.Where(ll => ll.Creator.Id == CurrentUser.Id)
//                .Include(ll => ll.Logs)
//                .Where(ll => ll.Logs.Any(lll => lll.AddedAt >= from && lll.AddedAt <= to))
//                .Select(ll => ll.Logs)
//                .Select(c => new
//                {
//                    volume = c.Sum(lll => lll.Volume)
//                })
//                .FirstOrDefaultAsync();
//
//            var result = new WoodLogListStatDTO
//            {
//                Value = volume?.volume ?? 0
//            };

        }
    }
}