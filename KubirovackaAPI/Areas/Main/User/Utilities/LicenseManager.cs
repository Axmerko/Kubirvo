using System;
using System.Collections;
using System.Threading.Tasks;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.DbContexts;

namespace KubirovackaAPI.Areas.Main.User.Utilities
{
    public class LicenseManager : ILicenseManager
    {
        private KubirovackaContext _dbContext;
        public LicenseManager(KubirovackaContext dbContext)
        {
            _dbContext = dbContext;
        }
        
        public async Task<License> GenerateLicense(Guid? id, DateTime expirationDate, Guid ownerGroupId, Guid? userId = null, bool saveChanges = true)
        {
            var licenseScopes = new BitArray(8);
            var lScopesArray = new[] { 1, 0, 0, 0, 0, 0, 0, 0 };
            for (var i = 0; i < licenseScopes.Length; i++)
            {
                licenseScopes[i] = lScopesArray[i].ToString() == 1.ToString();
            }

            
            var licenseId = id ?? Guid.NewGuid();

            var license = new License
            {
                Id = licenseId,
                CreatedAt = DateTime.UtcNow,
                ExpirationDate = expirationDate,
                NotifyExpirationAt = expirationDate > DateTime.UtcNow ? expirationDate.AddDays(-10) : DateTime.UtcNow,
                LicenseScopes = licenseScopes,
                OwnerGroupId = ownerGroupId,
                StartDate = DateTime.UtcNow,
                UserId = userId
            };

            _dbContext.Licenses.Add(license);
            if (saveChanges)
            {
                await _dbContext.SaveChangesAsync();
            }

            return license;
        }
    }
}