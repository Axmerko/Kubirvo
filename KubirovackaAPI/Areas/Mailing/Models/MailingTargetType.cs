namespace KubirovackaAPI.Areas.Mailing.Models
{
    public enum MailingTargetType
    {
        EveryConfirmedAddress = 0,
        SpecificAddresses = 1,
        PremiumUsers = 2,
        NonPremiumUsers = 3,
        ActiveUsers = 5,
        InactiveUsers = 6,
        Advertisers = 7,
        EveryUnconfirmedAddress = 8
    }
}