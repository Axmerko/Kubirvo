using System;
using System.Linq;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models
{
    public class WoodLogListGridFilter : GridFilter<WoodLogListWithPerformanceAndCreatorDTO>
    {
        private readonly KubirovackaContext _context;
        private readonly Group _currentGroup;

        public WoodLogListGridFilter(KubirovackaContext context, Group currentGroup)
        {
            _context = context;
            _currentGroup = currentGroup;
        }

        protected override IQueryable<WoodLogListWithPerformanceAndCreatorDTO> GetFilterQuery(GridQueryDTO filter)
        {
            var queue = _context.LogsLists.Where(
                    ll => ll.OwnerGroupId == _currentGroup.Id && !ll.IsSnapshot)
                .Include(ll => ll.Logs)
                .Include(ll => ll.Creator)
                .Include(ll => ll.Status)
                .Select(ll => new WoodLogListWithPerformanceAndCreatorDTO()
                {
                    Id = ll.Id,
                    Name = ll.Name,
                    CreatedAt = ll.CreatedAt,
                    RewardType = ll.RewardType,
                    OwnerGroupId = ll.OwnerGroupId,
                    RewardInCents = ll.RewardInCents,
                    Volume = ll.Logs.Sum(lll => (float?)lll.Volume) ?? 0,
                    Earnings = (ll.Logs.Sum(lll => (float?)lll.Volume) ?? 0) * (double)ll.RewardInCents,
                    CreatorId = ll.Creator.Id,
                    CreatorEmail = ll.Creator.Email,
                    CreatorFistName = ll.Creator.FirstName,
                    CreatorLastName = ll.Creator.LastName,
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

            if (filter.FilterQuery != null && !string.IsNullOrEmpty(filter.FilterQuery?.Search))
            {
                queue = queue.Where(l => l.Name.ToLower().Contains(filter.FilterQuery.Search));
            }

            filter.FilterQuery?.Rules?.ForEach(rule =>
            {
                queue = rule.ColumnName switch
                {
                    "user" => queue.Where(l => l.CreatorId == Guid.Parse(rule.Value)),
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
                "status" => (asc
                    ? queue.OrderBy(ll => ll.StatusDto.Id)
                    : queue.OrderByDescending(ll => ll.StatusDto.Id)),
                _ => queue
            };
            return queue;
        }
    }
}