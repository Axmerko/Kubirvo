using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;
using KubirovackaAPI.DbContexts;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Main.User.Utilities
{
    public class GroupUtil
    {
        public static async Task initGroup(KubirovackaContext kubContext, Group group, IStringLocalizer localizer, bool saveChanges = true)
        { 
            await initWoodQuality(kubContext, group, localizer, saveChanges);
        }

        private static async Task initWoodQuality(KubirovackaContext kubContext, Group group, IStringLocalizer localizer, bool saveChanges)
        { 
            var count = await kubContext.WoodQualities.CountAsync(wq => wq.GroupId == group.Id);
            if (count > 0) 
                throw new Exception("WoodQuality already initialized!");
            
            var list = new List<WoodQuality>();
            for (var i = 0; i < 6; i++)
            {
                list.Add(new WoodQuality
                {
                    GroupId = group.Id,
                    Quality = i + 1,
                    Name = localizer[$"wood.quality.{i + 1}"]
                });
            }

            await kubContext.WoodQualities.AddRangeAsync(list);
            if (saveChanges)
            {
                await kubContext.SaveChangesAsync();
            }
        }
    }
}