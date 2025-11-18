using System;
using System.Collections;
using System.Threading.Tasks;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.DbContexts;
using Microsoft.EntityFrameworkCore;

namespace KubirovackaAPI.Areas.Main.User.Utilities
{
    public class UserUtil : IUserUtil
    {
        private readonly KubirovackaContext _context;

        public UserUtil(KubirovackaContext context)
        {
            _context = context;
        }

        public License CurrentLicense { get; set; }
        public Models.Database.User CurrentUser { get; set; }

        public Group CurrentGroup { get; set; }
        
        public BitArray CurrentPermissions { get; set; }
        public bool CheckPermission(Permission permission)
        {
            return CurrentPermissions[(int) permission];
        }
    }
}