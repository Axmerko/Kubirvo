using System.Text.Json.Serialization;

namespace KubirovackaAPI.Areas.Payment.License.Models.DTO
{
    public class AppleNotificationDTO
    {
        [JsonPropertyName("signedPayload")]
        public string SignedPayload { get; set; }
    }
    
    public class AppleNotificationDecodedPayload
    {
        [JsonPropertyName("notificationType")]
        public string NotificationType { get; set; }

        [JsonPropertyName("subtype")]
        public string Subtype { get; set; }

        [JsonPropertyName("data")]
        public AppleNotificationData Data { get; set; }
    }

    public class AppleNotificationData
    {
        [JsonPropertyName("signedTransactionInfo")]
        public string SignedTransactionInfo { get; set; }
    }

    public class AppleTransactionInfo
    {
        [JsonPropertyName("originalTransactionId")]
        public string OriginalTransactionId { get; set; }

        [JsonPropertyName("productId")]
        public string ProductId { get; set; }

        [JsonPropertyName("expiresDate")]
        public long ExpiresDate { get; set; }
    }
}