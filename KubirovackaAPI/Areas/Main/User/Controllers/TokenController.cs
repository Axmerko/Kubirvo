using System;
using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;
using KubirovackaAPI.Areas.Main.User.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Models;
using KubirovackaAPI.Utilities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Main.User.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    [ApiController]
    public class TokenController : Controller
    {
        private readonly KubirovackaContext _context;
        private readonly IStringLocalizer _localizer;
        private readonly IHashUtils _hasher;
        private readonly IJwtUtil _jwtUtil;
        
        public TokenController(KubirovackaContext context, IHashUtils hasher, IJwtUtil jwtUtil, IStringLocalizerFactory strFactory)
        {
            _context = context;
            _localizer = LocalizationUtil.getLocalizer(strFactory);
            _hasher = hasher;
            _jwtUtil = jwtUtil;
        }

        /// <summary>
        /// Vrací autentizační JWT token
        /// </summary>
        /// <param name="email">Email</param>
        /// <param name="password">Heslo</param>
        /// <returns>Jwt token a jeho expiraci</returns>
        /// <response code="400">Neplatný požadavek</response>
        /// <response code="401">Špatné přihlašovací údaje</response>
        /// <response code="200">Přihlášení úspěšné</response>
        [ProducesResponseType(400)]
        [ProducesResponseType(401)]
        [ProducesResponseType(200)]
        [HttpPost]
        public async Task<ActionResult<GeneratedJwtDTO>> CreateToken(
            [FromForm][Required(ErrorMessage = "Email musí být zadán!"), EmailAddress(ErrorMessage = "Neplatný email!")]
            string email, [FromForm][Required(ErrorMessage = "Heslo musí být zadané!")] string password)
        {
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                return BadRequest(new ErrorResponse(_localizer["Neplatný požadavek."]));
            }

            var findUser = await _context.Users
                .Include(u => u.UserGroups)
                .FirstOrDefaultAsync(u => u.Email.Equals(email.ToLower()));
            if (findUser == null) return Unauthorized(new ErrorResponse(_localizer["Tento email neexistuje!"]));
            if (!findUser.Confirmed) return Unauthorized(new ErrorResponse(_localizer["Tento účet není potvrzený!"]));
            if (!findUser.Password.Equals(_hasher.GetSha224(password)))
            {
                return Unauthorized(new ErrorResponse(_localizer["Nesprávné heslo!"]));
            }
            
            var currentLicense = await _context.Licenses.FirstOrDefaultAsync
                (l => l.UserId == findUser.Id && l.ExpirationDate > DateTime.UtcNow && l.StartDate <= DateTime.UtcNow);    
            
            var token = _jwtUtil.GenerateNewToken(findUser, currentLicense);
            return Ok(token);   
        }
    }
}