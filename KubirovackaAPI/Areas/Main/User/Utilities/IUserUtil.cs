using System;
using System.Collections;
using System.Threading.Tasks;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Models.Database;

namespace KubirovackaAPI.Areas.Main.User.Utilities
{
    public interface IUserUtil
    {
        #nullable enable
        License CurrentLicense { get; set; }
        #nullable disable
        Models.Database.User CurrentUser { get; set; }
        Group CurrentGroup { get; set; }
        BitArray CurrentPermissions { get; set; }

        bool CheckPermission(Permission permission);
    }
}