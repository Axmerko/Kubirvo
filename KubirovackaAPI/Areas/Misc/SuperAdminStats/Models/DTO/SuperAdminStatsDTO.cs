using System.Collections.Generic;

namespace KubirovackaAPI.Areas.Misc.SuperAdminStats.Models.DTO
{
    public class SuperAdminStatsDTO
    {
        public SuperAdminStatsDTO(int confirmedUsers, int activeLicenses, int activeMonthLicenses, int activeYearLicenses)
        {
            ConfirmedUsers = confirmedUsers;
            ActiveLicenses = activeLicenses;
            ActiveMonthLicenses = activeMonthLicenses;
            ActiveYearLicenses = activeYearLicenses;
        }

        public int ConfirmedUsers { get; }
        public int ActiveLicenses { get; }
        public int ActiveMonthLicenses { get; }
        public int ActiveYearLicenses { get; }

        public Dictionary<int, SuperAdminStatsYear<int>> PaidLicensePayments { get; } = new Dictionary<int, SuperAdminStatsYear<int>>();
        public Dictionary<int, SuperAdminStatsYear<int>> CanceledOrTimeoutedLicensePayments { get; } = new Dictionary<int, SuperAdminStatsYear<int>>();
        public Dictionary<int, SuperAdminStatsYear<int>> InvoicesForPayments { get; } = new Dictionary<int, SuperAdminStatsYear<int>>();
        public Dictionary<int, SuperAdminStatsYear<decimal>> MoneyEarned { get; } = new Dictionary<int, SuperAdminStatsYear<decimal>>();
    }

    public class SuperAdminStatsYear<T>
    {
        public SuperAdminStatsYear(T total)
        {
            Total = total;
        }

        public T Total { get; }
        public Dictionary<int, T> Months { get; } = new Dictionary<int, T>();
    }
}