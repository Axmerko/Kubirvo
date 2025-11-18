using System.Runtime.Serialization;

namespace KubirovackaAPI.Areas.Payment.License.Enums;

public enum GooglePlaySubscriptionState
{
    [EnumMember(Value = "SUBSCRIPTION_STATE_UNSPECIFIED")]
    SubscriptionStateUnspecified = 0,

    [EnumMember(Value = "SUBSCRIPTION_STATE_PENDING")]
    SubscriptionStatePending = 1,

    [EnumMember(Value = "SUBSCRIPTION_STATE_ACTIVE")]
    SubscriptionStateActive = 2,

    [EnumMember(Value = "SUBSCRIPTION_STATE_PAUSED")]
    SubscriptionStatePaused = 3,

    [EnumMember(Value = "SUBSCRIPTION_STATE_IN_GRACE_PERIOD")]
    SubscriptionStateInGracePeriod = 4,

    [EnumMember(Value = "SUBSCRIPTION_STATE_ON_HOLD")]
    SubscriptionStateOnHold = 5,

    [EnumMember(Value = "SUBSCRIPTION_STATE_CANCELED")]
    SubscriptionStateCanceled = 6,

    [EnumMember(Value = "SUBSCRIPTION_STATE_EXPIRED")]
    SubscriptionStateExpired = 7
}