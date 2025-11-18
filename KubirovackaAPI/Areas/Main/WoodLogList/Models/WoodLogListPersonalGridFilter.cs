using System;
using System.Linq;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models
{
    public class WoodLogListPersonalGridFilter : GridFilter<WoodLogListWithPerformanceDTO>
    {
        private readonly KubirovackaContext _context;
        private readonly User.Models.Database.User _currentUser;

        public WoodLogListPersonalGridFilter(KubirovackaContext context, User.Models.Database.User user)
        {
            _context = context;
            _currentUser = user;
        }
        protected override IQueryable<WoodLogListWithPerformanceDTO> GetFilterQuery(GridQueryDTO filter)
        {
            var queue = _context.LogsLists.Where(ll =>
                    ll.Creator.Id == _currentUser.Id && !ll.IsSnapshot && ll.CopiedFromId == null)
                .Include(l => l.Logs)
                .Include(l => l.Status)
                .Select(ll => new WoodLogListWithPerformanceDTO
                {
                    Id = ll.Id,
                    Name = ll.Name,
                    CreatedAt = ll.CreatedAt,
                    RewardType = ll.RewardType,
                    OwnerGroupId = ll.OwnerGroupId,
                    RewardInCents = ll.RewardInCents,
                    Volume = ll.Logs.Sum(lll => (float?)lll.Volume) ?? 0,
                    Earnings = (ll.Logs.Sum(lll => (float?)lll.Volume) ?? 0) * (double) ll.RewardInCents,
                    EditedFromWeb = ll.EditedFromWeb,
                    StatusDto = new WoodLogListStatusDTO
                    {
                        Id = ll.Status.Id,
                        CustomName = ll.Status.CustomName,
                        IsGlobal = ll.Status.IsGlobal,
                        StatusType = ll.Status.StatusType,
                        OwnerGroupId = ll.Status.OwnerGroupId
                    }
                });

            var asc = filter.Order == "asc";

            if (!string.IsNullOrEmpty(filter.FilterQuery?.Search))
            {
                queue = queue.Where(l => l.Name.ToLower().Contains(filter.FilterQuery.Search));
            }

            filter.FilterQuery?.Rules?.ForEach(rule =>
            {
                queue = rule.ColumnName switch
                {
                    "createdFrom" => queue.Where(l => l.CreatedAt >= DateTimeOffset.Parse(rule.Value)),
                    "createdTo" => queue.Where(l => l.CreatedAt <= DateTimeOffset.Parse(rule.Value)),
                    "status" => queue.Where(l => l.StatusDto.Id == int.Parse(rule.Value)),
                    _ => queue
                };
            });

            queue = filter.Sort switch
            {
                "name" => (asc ? queue.OrderBy(ll => ll.Name) : queue.OrderByDescending(ll => ll.Name)),
                "createdAt" => (asc
                    ? queue.OrderBy(ll => ll.CreatedAt)
                    : queue.OrderByDescending(ll => ll.CreatedAt)),
                "totalVolume" => (asc
                    ? queue.OrderBy(ll => ll.Volume)
                    : queue.OrderByDescending(ll => ll.Volume)),
                "totalEarnings" => (asc
                    ? queue.OrderBy(ll => ll.Earnings)
                    : queue.OrderByDescending(ll => ll.Earnings)),
                _ => queue
            };

            return queue;
        }
    }
}