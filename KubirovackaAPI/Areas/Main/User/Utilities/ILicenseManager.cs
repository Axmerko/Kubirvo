using System;
using System.Threading.Tasks;
using KubirovackaAPI.Areas.Main.User.Models.Database;

namespace KubirovackaAPI.Areas.Main.User.Utilities
{
    public interface ILicenseManager
    {
        Task<License> GenerateLicense(Guid? id, DateTime expirationDate, Guid ownerGroupId, Guid? userId = null, bool saveChanges = true);
    }
}