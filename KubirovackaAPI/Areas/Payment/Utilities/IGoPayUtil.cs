using Microsoft.Extensions.Configuration;

namespace KubirovackaAPI.Areas.Payment.Utilities
{
    public interface IGoPayUtil
    {
        GoPay.GPConnector GetConnector();

        GoPay.Model.Payments.Payment GetPayment(long id);

        int ConvertToCurrencyCents(int czechCents, GoPay.Common.Currency currency);
    }
}