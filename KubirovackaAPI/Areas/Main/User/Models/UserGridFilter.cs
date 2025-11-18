
using System.Linq;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.User.Models.Database.Join;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace KubirovackaAPI.Areas.Main.User.Models
{
    public class UserGridFilter : GridFilter<UserGroup>
    {
        private readonly KubirovackaContext _context;
        private readonly Group _currentGroup;
        
        public UserGridFilter(KubirovackaContext context, Group currentGroup)
        {
            _context = context;
            _currentGroup = currentGroup;
        }
        protected override IQueryable<UserGroup> GetFilterQuery(GridQueryDTO filter)
        {
            IQueryable<UserGroup> queue = _context.UserGroups.Where(ug => ug.GroupId == _currentGroup.Id)
                .Include(ug => ug.Group)
                .Include(ug => ug.User.LicensesUsed);

            var asc = filter.Order == "asc";

            if (!string.IsNullOrEmpty(filter.FilterQuery?.Search))
            {
                queue = queue.Where(ug => ug.User.FirstName.ToLower().Contains(filter.FilterQuery.Search) ||
                                          ug.User.LastName.ToLower().Contains(filter.FilterQuery.Search) ||
                                          ug.User.Email.ToLower().Contains(filter.FilterQuery.Search));
            }

            queue = filter.Sort switch
            {
                "email" => (asc ? queue.OrderBy(ug => ug.User.Email) : queue.OrderByDescending(ug => ug.User.Email)),
                "name" => (asc
                    ? queue.OrderBy(ug => ug.User.LastName)
                    : queue.OrderByDescending(ug => ug.User.LastName)),
                "registeredAt" => (asc
                    ? queue.OrderBy(ug => ug.User.RegisteredAt)
                    : queue.OrderByDescending(ug => ug.User.RegisteredAt)),
                _ => queue
            };

            return queue;
        }
    }
}