using System.Runtime.Serialization;
using GoPay.Common;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace KubirovackaAPI.Areas.Payment.License.Models
{
    public class GoPayPaymentDTO
    {
        internal SessionSubState? SubState { get; set; }

        internal string GwUrl { get; set; }

        //s podtrzitkem kvuli generovani frontu
        // ReSharper disable once UnusedMember.Global
        // ReSharper disable once InconsistentNaming
        public string gw_url { get; set; }
    }
}