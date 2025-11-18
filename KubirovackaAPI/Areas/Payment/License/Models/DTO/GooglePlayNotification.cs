using System;
using KubirovackaAPI.Areas.Payment.License.Enums;

namespace KubirovackaAPI.Areas.Payment.License.Models.DTO;

public class GoogleRawNotification
{
    public class GoogleRawNotificationMessageData
    {
        public string Data { get; set; }
        public string MessageId { get; set; }
        public DateTime PublishTime { get; set; }
    }
            
    public GoogleRawNotificationMessageData Message { get; set; }
    public string Subscription { get; set; }
}

public class GooglePlayNotification
{
    public string Version { get; set; }
    public string PackageName { get; set; }
    public string EventTimeMillis { get; set; }
    public GooglePlaySubscriptionNotification SubscriptionNotification { get; set; }
}

public class GooglePlaySubscriptionNotification
{
    public string Version { get; set; }
    public int NotificationType { get; set; }
    public string PurchaseToken { get; set; }
    public GooglePlaySubscriptionType SubscriptionId { get; set; }
}