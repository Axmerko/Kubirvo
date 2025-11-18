
using System.Linq;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace KubirovackaAPI.Areas.Main.User.Models
{
    public class LicenseGridFilter : GridFilter<License>
    {
        private readonly KubirovackaContext _context;
        private readonly Group _currentGroup;
        
        public LicenseGridFilter(KubirovackaContext context, Group currentGroup)
        {
            _context = context;
            _currentGroup = currentGroup;
        }
        protected override IQueryable<License> GetFilterQuery(GridQueryDTO filter)
        {
            IQueryable<License> queue = _context.Licenses.Where(ug => ug.OwnerGroupId == _currentGroup.Id)
                .Include(ug => ug.User);
            
            var asc = filter.Order == "asc";
            
            if (!string.IsNullOrEmpty(filter.FilterQuery?.Search))
            {
                queue = queue.Where(l => l.User.FirstName.ToLower().Contains(filter.FilterQuery.Search) ||
                                         l.User.LastName.ToLower().Contains(filter.FilterQuery.Search) ||
                                         l.User.Email.ToLower().Contains(filter.FilterQuery.Search));
            }
            
            switch (filter.Sort)
            {
                case "startDate":
                    queue = asc ? queue.OrderBy(l => l.StartDate) : queue.OrderByDescending(l => l.StartDate);
                    break;
                case "expirationDate":
                    queue = asc ? queue.OrderBy(l => l.ExpirationDate) : queue.OrderByDescending(l => l.ExpirationDate);
                    break;
            }

            return queue;
        }
    }
}