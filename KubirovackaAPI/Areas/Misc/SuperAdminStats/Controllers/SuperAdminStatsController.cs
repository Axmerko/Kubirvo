using System;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using FluentDateTime;
using FluentDateTimeOffset;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.Areas.Misc.SuperAdminStats.Models.DTO;
using KubirovackaAPI.Areas.Payment.License.Enums;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Requirements;
using KubirovackaAPI.Settings;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;
using Microsoft.Extensions.Options;

namespace KubirovackaAPI.Areas.Misc.SuperAdminStats.Controllers
{
    [Area("Misc")]
    [Route("api/[area]/[controller]")]
    public class SuperAdminStatsController : KubirovackaController
    {
        private readonly PricingOptions _pricingOptions;

        public SuperAdminStatsController(IUserUtil userUtil, KubirovackaContext context, IMapper mapper,
            IStringLocalizerFactory stringLocalizer, IOptions<PricingOptions> pricingOptions)
            : base(userUtil, context, mapper, stringLocalizer)
        {
            _pricingOptions = pricingOptions.Value;
        }

        [HttpGet]
        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        public async Task<ActionResult<SuperAdminStatsDTO>> GetStats()
        {
            var now = DateTime.UtcNow;
            var confirmedUsers = await Context.Users.CountAsync(u => u.Confirmed);
            var activeLicenses = await Context.Licenses.CountAsync(l => l.ExpirationDate > now);
            var activeMonthLicenses = await Context.Licenses.CountAsync(l =>
                l.ExpirationDate > now && l.LastPurchasePeriod == LicenseProductType.KubPrem1Month);
            var activeYearLicenses = await Context.Licenses.CountAsync(l =>
                l.ExpirationDate > now && l.LastPurchasePeriod == LicenseProductType.KubPrem1Year);

            var result =
                new SuperAdminStatsDTO(confirmedUsers, activeLicenses, activeMonthLicenses, activeYearLicenses);

            for (var i = -3; i < 1; i++)
            {
                var yearStart = DateTime.UtcNow.FirstDayOfYear().BeginningOfDay().AddYears(i);
                var yearEnd = DateTime.UtcNow.LastDayOfYear().EndOfDay().AddYears(i);

                var paidLicensePaymentsPerYear = await Context.LicensePayments.CountAsync(l =>
                    l.OrderedAt > yearStart && l.OrderedAt < yearEnd &&
                    l.State == GoPay.Model.Payments.Payment.SessionState.PAID);
                var canceledOrTimeoutedLicensePaymentsPerYear = await Context.LicensePayments.CountAsync(l =>
                    l.OrderedAt > yearStart && l.OrderedAt < yearEnd &&
                    (l.State == GoPay.Model.Payments.Payment.SessionState.CANCELED ||
                     l.State == GoPay.Model.Payments.Payment.SessionState.TIMEOUTED));
                var invoicesForPaymentsPerYear = await Context.LicensePayments.CountAsync(l =>
                    l.OrderedAt > yearStart && l.OrderedAt < yearEnd && l.InvoiceGenerated);
                var moneyEarnedPerYear = await Context.LicensePaymentItems
                    .Where(l => l.LicensePayment.OrderedAt > yearStart && l.LicensePayment.OrderedAt < yearEnd &&
                                l.LicensePayment.State == GoPay.Model.Payments.Payment.SessionState.PAID)
                    .SumAsync(l => l.LicenseProductType == LicenseProductType.KubPrem1Month ? _pricingOptions.MonthlyPrice : _pricingOptions.YearlyPrice);

                result.PaidLicensePayments.Add(yearStart.Year,
                    new SuperAdminStatsYear<int>(paidLicensePaymentsPerYear));
                result.CanceledOrTimeoutedLicensePayments.Add(yearStart.Year,
                    new SuperAdminStatsYear<int>(canceledOrTimeoutedLicensePaymentsPerYear));
                result.InvoicesForPayments.Add(yearStart.Year,
                    new SuperAdminStatsYear<int>(invoicesForPaymentsPerYear));
                result.MoneyEarned.Add(yearStart.Year, new SuperAdminStatsYear<decimal>(moneyEarnedPerYear));

                for (var m = 0; m < 12; m++)
                {
                    var monthStart = yearStart.AddMonths(m);
                    var monthEnd = monthStart.AddMonths(1).AddDays(-1).EndOfDay();

                    var paidLicensePaymentsPerMonth = await Context.LicensePayments
                        .CountAsync(l =>
                            l.OrderedAt > monthStart && l.OrderedAt < monthEnd &&
                            l.State == GoPay.Model.Payments.Payment.SessionState.PAID);
                    var canceledOrTimeoutedLicensePaymentsPerMonth = await Context.LicensePayments
                        .CountAsync(l => l.OrderedAt > monthStart && l.OrderedAt < monthEnd &&
                                         (l.State == GoPay.Model.Payments.Payment.SessionState.CANCELED
                                          || l.State == GoPay.Model.Payments.Payment.SessionState.TIMEOUTED));
                    var invoicesForPaymentsPerMonth = await Context.LicensePayments
                        .CountAsync(l => l.OrderedAt > monthStart && l.OrderedAt < monthEnd && l.InvoiceGenerated);
                    var moneyEarnedPerMonth = await Context.LicensePaymentItems
                        .Where(l => l.LicensePayment.OrderedAt > monthStart && l.LicensePayment.OrderedAt < monthEnd &&
                                    l.LicensePayment.State == GoPay.Model.Payments.Payment.SessionState.PAID)
                        .SumAsync(l => l.LicenseProductType == LicenseProductType.KubPrem1Month ? _pricingOptions.MonthlyPrice : _pricingOptions.YearlyPrice);

                    result.PaidLicensePayments[yearStart.Year].Months.Add(m + 1, paidLicensePaymentsPerMonth);
                    result.CanceledOrTimeoutedLicensePayments[yearStart.Year].Months
                        .Add(m + 1, canceledOrTimeoutedLicensePaymentsPerMonth);
                    result.InvoicesForPayments[yearStart.Year].Months.Add(m + 1, invoicesForPaymentsPerMonth);
                    result.MoneyEarned[yearStart.Year].Months.Add(m + 1, moneyEarnedPerMonth);
                }
            }

            return Ok(result);
        }
    }
}