using System;
using GoPay;
using Microsoft.Extensions.Configuration;
using GoPay.Common;

namespace KubirovackaAPI.Areas.Payment.Utilities
{
    public class GoPayUtil : IGoPayUtil
    {
        private readonly IConfiguration _configuration;

        public GoPayUtil(IConfiguration configuration)
        {
            this._configuration = configuration;
        }
        public GPConnector GetConnector()
        {
            var connector = new GPConnector(_configuration["GoPaySettings:URL"],
                _configuration["GoPaySettings:ClientID"], _configuration["GoPaySettings:ClientSecret"]);
            connector.GetAppToken();
            return connector;
        }

        public GoPay.Model.Payments.Payment GetPayment(long id)
        {
            try
            {
                var connector = GetConnector();
                var payment = connector.PaymentStatus(id);
                return payment;
            }
            catch (GPClientException e)
            {
                Console.WriteLine(e);
                return null;
            }
        }

        public int ConvertToCurrencyCents(int czechCents, Currency currency)
        {

            int resultCents = 0;
            resultCents = currency switch
            {
                Currency.CZK => czechCents,
                Currency.EUR => czechCents / 20,
                _ => 100
            };

            return resultCents;
        }
    }
}