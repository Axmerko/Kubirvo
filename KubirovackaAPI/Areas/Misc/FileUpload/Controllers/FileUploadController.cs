using System;
using System.IO;
using System.Reflection;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Requirements;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Misc.FileUpload.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class FileUploadController : KubirovackaController
    {
        private readonly IConfiguration _config;

        public FileUploadController(IUserUtil userUtil, KubirovackaContext context, IMapper mapper,
            IStringLocalizerFactory stringLocalizer, IConfiguration config) : base(userUtil, context, mapper, stringLocalizer)
        {
            _config = config;
        }

        [HttpPost]
        [CheckAccess(Permission.SuperAdmin)]
        public async Task<IActionResult> PostFile(IFormFile file)
        {
            if (file.Length <= 0) return BadRequest();
            var path = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "/ClientApp/dist/assets/uploads/";

            var fileName = DateTime.UtcNow.ToShortDateString().Replace(".", "_") + "_" + 
                           DateTime.UtcNow.ToShortTimeString().Replace(":", "_") + "_" + file.FileName;
            await using var stream = new FileStream(path + fileName, FileMode.Create);
            await file.CopyToAsync(stream);
            var url = _config["BaseUrl"] + "/assets/uploads/" + fileName;
            return Created(url, null);
        }
    }
}