using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using KubirovackaAPI.Resources;
using KubirovackaAPI.Utilities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Main.Shared.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    [ApiController]
    public class LocalizationController : Controller
    {
        private readonly IStringLocalizer _sharedLocalizer;
        
        public LocalizationController(IStringLocalizerFactory factory)
        {
            _sharedLocalizer = LocalizationUtil.getLocalizer(factory);
        }
        [HttpGet]
        public ActionResult<Dictionary<string, string>> GetDictionary()
        {
            var allStrings = _sharedLocalizer.GetAllStrings();
            return allStrings.Where(s => s.Name.StartsWith("an.")).ToDictionary(s => s.Name, s => s.Value);
        }
    }
}
