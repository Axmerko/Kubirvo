using System.Linq;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models
{
    public class WoodQualityGridFilter : GridFilter<WoodQuality>
    {
        private readonly KubirovackaContext _context;
        private readonly Group _currentGroup;
        
        public WoodQualityGridFilter(KubirovackaContext context, Group currentGroup)
        {
            _context = context;
            _currentGroup = currentGroup;
        }
        protected override IQueryable<WoodQuality> GetFilterQuery(GridQueryDTO filter)
        {
            var queue = _context.WoodQualities.Where(wq => wq.GroupId == _currentGroup.Id);
            
            var asc = filter.Order == "asc";

            if (filter.FilterQuery != null && !string.IsNullOrEmpty(filter.FilterQuery.Search))
            {
                queue = queue.Where(l => l.Name.ToLower().Contains(filter.FilterQuery.Search));
            }
            
            queue = filter.Sort switch
            {
                "name" => (asc ? queue.OrderBy(ll => ll.Name) : queue.OrderByDescending(ll => ll.Name)),
                "quality" => (asc
                    ? queue.OrderBy(ll => ll.Quality)
                    : queue.OrderByDescending(ll => ll.Quality)),
                _ => queue
            };
            return queue;
        }
    }
}