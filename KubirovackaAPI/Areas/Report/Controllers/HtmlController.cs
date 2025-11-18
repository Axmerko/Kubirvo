﻿using Microsoft.AspNetCore.Mvc;

namespace KubirovackaAPI.Areas.Report.Controllers
{
    [Area("Report")]
    [Controller]
    [Route("api/[area]/[controller]")]
    public class HtmlController : Controller
    {
        
        [HttpGet]
        [Route("footer")]
        public IActionResult Footer()
        {
            return View();
        }
    }
}