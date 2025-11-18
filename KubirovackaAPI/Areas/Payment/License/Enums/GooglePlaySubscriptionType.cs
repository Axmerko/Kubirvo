using System.Runtime.Serialization;

namespace KubirovackaAPI.Areas.Payment.License.Enums;

public enum GooglePlaySubscriptionType
{
    [EnumMember(Value = "kub_premium_monthly")]
    MonthlySubscription = 0,
    [EnumMember(Value = "kub_premium_yearly")]
    YearlySubscription = 1,
}