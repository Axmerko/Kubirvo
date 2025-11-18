using Microsoft.Extensions.Configuration;
using Microsoft.AspNetCore.Mvc;

namespace KubirovackaAPI.Areas.Misc.AppStatus.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class VersionController
    {

        private readonly IConfiguration _configuration;

        public VersionController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpGet]
        public ActionResult<string> GetVersion()
        {            
            return _configuration["AppVersion"];
        }
    }
}