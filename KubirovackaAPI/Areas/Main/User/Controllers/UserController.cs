using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Models.Database.Join;
using KubirovackaAPI.Areas.Main.User.Models.DTO;
using KubirovackaAPI.Areas.Main.User.Utilities;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Migrations;
using KubirovackaAPI.Models;
using KubirovackaAPI.Requirements;
using KubirovackaAPI.Utilities;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Localization;
using Group = KubirovackaAPI.Areas.Main.User.Models.Database.Group;

namespace KubirovackaAPI.Areas.Main.User.Controllers
{
    [Area("Main")]
    [Route("api/[area]/[controller]")]
    public class UserController : KubirovackaController
    {
        private readonly IHashUtils _hasher;
        private readonly IEmailingUtils _emailingUtils;
        private readonly ILicenseManager _licenseManager;
        private readonly IConfiguration _configuration;

        public UserController(KubirovackaContext context, IHashUtils hasher,
            IEmailingUtils emailingUtils, IUserUtil userUtil, IMapper iMapper,
            ILicenseManager licenseManager, IStringLocalizerFactory strFactory, IConfiguration configuration) 
            : base(userUtil, context, iMapper, strFactory)
        {
            _hasher = hasher;
            _emailingUtils = emailingUtils;
            _licenseManager = licenseManager;
            _configuration = configuration;
        }

        /// <summary>
        /// Registrace
        /// </summary>
        /// <param name="userDTO">Objekt uživatele k registraci</param>
        /// <returns>Registrovaného uživatele</returns>
        /// <response code="201">Registrace úspěšná</response>
        /// <response code="400">Neplatný požadavek</response>
        [ProducesResponseType(201)]
        [ProducesResponseType(400)]
        [ProducesResponseType(201)]
        [AllowAnonymous]
        [HttpPost]
        public async Task<ActionResult<UserRegisterDTO>> Post([FromForm] UserRegisterDTO userDTO)
        {
            var findUser = await Context.Users.FirstOrDefaultAsync(u => u.Email == userDTO.Email.ToLower());
            if (findUser != null) return BadRequest(new ErrorResponse(Localizer["Tento email je již zabrán!"]));
            
            var user = Mapper.Map(userDTO, new Models.Database.User());
            user.Password = _hasher.GetSha224(user.Password);
            user.Id = Guid.NewGuid();
            Context.Users.Add(user);
            var groupId = Guid.NewGuid();
            var group = new Group
            {
                Id = groupId,
                Name = user.FirstName.ToNameString() + " " + user.LastName.ToNameString(),
            };
            Context.Groups.Add(group);
            
            var ownerRole = await Context.Roles.FirstAsync(r => r.RoleType == RoleType.Owner);
            
            Context.UserGroups.Add(new UserGroup
            {
                UserId = user.Id,
                GroupId = groupId,
                RoleId =  ownerRole.RoleId,
                IsHomeGroup = true,
            });
            
            await Context.SaveChangesAsync();
            await _licenseManager.GenerateLicense(null, DateTime.UtcNow, groupId, user.Id);
            await GroupUtil.initGroup(Context, group, Localizer);
            
            var receivers = new Dictionary<string, string> {{$"{user.FirstName} {user.LastName}", user.Email}};
            var confirmAccountKey = _hasher.GetEncryptedByKey(user.Email);
            var baseUrl = _configuration["BaseUrl"];
            var buttonLink = $"{baseUrl}/confirmEmail?confirmHash={WebUtility.UrlEncode(confirmAccountKey)}";
            await _emailingUtils.SendNoreplyEmail(receivers, Localizer["Potvrzení účtu"],
                new DefaultEmail(
                    Localizer["Vítejte u Kubírovačky!"],
                    $"<p>{Localizer["Děkujeme, že jste si vybrali právě nás."]}</p>" +
                    $"<a href={buttonLink}>{Localizer["Potvrdit účet"]}</a>"
                    ));
            return Created(string.Empty, Mapper.Map(user, new UserProfileDTO()));
        }
        
          /// <summary>
        /// Přidání uživatele do skupiny
        /// </summary>
        /// <param name="userDTO">Objekt uživatele k registraci</param>
        /// <returns>Registrovaného uživatele</returns>

        [ProducesResponseType(201)]
        [ProducesResponseType(400)]
        [ProducesResponseType(401)]
        [ProducesResponseType(403)]
        [CheckAccess(Permission.AddNewUserToGroup)]
        [HttpPost("AddUserToGroup")]
        public async Task<ActionResult<UserAddFormDTO>> AddUserToGroup([FromForm] UserAddFormDTO userDTO)
          {
              var findUser = await Context.Users.FirstOrDefaultAsync(u => u.Email == userDTO.Email.ToLower());
            if (findUser != null)
            {
                return BadRequest(new ErrorResponse(Localizer["Tento email je již zabrán!"]));
            }

            var findRole = await Context.Roles.FirstOrDefaultAsync(r => r.RoleId == userDTO.RoleId);
            if (findRole == null) return BadRequest(new ErrorResponse(Localizer["Role.does.not.exists"]));

            var user = Mapper.Map(userDTO, new Models.Database.User());
            user.Password = _hasher.GetSha224(user.Password);
            user.Confirmed = true;
            user.Id = Guid.NewGuid();
            Context.Users.Add(user);

            Context.UserGroups.Add(new UserGroup
            {
                UserId = user.Id,
                GroupId = CurrentGroup.Id,
                RoleId =  userDTO.RoleId,
                IsSubAccount = true,
                IsHomeGroup = true, // podle me by tady urcite melo byt true - je to jeho domovska skupina, kdo je
                                    // "Majitel" bych neresil, proste jsou role, to staci
            });

            await Context.SaveChangesAsync();
            return Created(string.Empty, Mapper.Map(user, new UserAddFormDTO()));
        }
          
        /// <summary>
        /// Editace profilu uživatele
        /// </summary>
        /// <param name="userDTO">Objekt uživatele k editaci</param>
        /// <returns>Profil uživatele</returns>
        [ProducesResponseType(200)]
        [ProducesResponseType(401)]
        [ProducesResponseType(403)]
        [ProducesResponseType(404)]
        [CheckAccess(Permission.EditUserProfile)]
        [HttpPatch("Profile")]
        public async Task<ActionResult<UserProfileDTO>> EditUserProfile([FromForm] UserEditProfileDTO userDTO)
        {
            var findUserById = await Context.Users.FirstOrDefaultAsync(u => u.Id == userDTO.Id);
            if (findUserById == null) return NotFound(new ErrorResponse(Localizer["Uživatel nexistuje!"]));

            var group = await Context.Groups.Include(g => g.UserGroups)
                .Where(g => g.Id == CurrentGroup.Id &&
                            g.UserGroups.Any(ug => ug.UserId == userDTO.Id && ug.IsHomeGroup)).FirstOrDefaultAsync();
            
            if (group == null) return BadRequest(
                new ErrorResponse(Localizer["Editace uživatele je povolena pouze v domovské skupině!"]));
                
            var findUserByEmail = await Context.Users.FirstOrDefaultAsync(u => u.Email == userDTO.Email);
            if (findUserByEmail != null && findUserByEmail.Id != findUserById.Id)
            {
                return BadRequest(new ErrorResponse(Localizer["Uživatel s tímto emailem již existuje!"]));
            }

            if (userDTO.Password != null)
            {
                if (userDTO.Password.Length < 6)
                {
                    return BadRequest(new ErrorResponse(Localizer["Heslo musí obsahovat alespoň 6 znaků!"]));
                }

                findUserById.Password = _hasher.GetSha224(userDTO.Password);
            }

            if (userDTO.RoleId != null)
            {
                var findRole = await Context.Roles.FirstOrDefaultAsync(r => r.RoleId == userDTO.RoleId);
                if (findRole == null) return BadRequest(new ErrorResponse(Localizer["Role.does.not.exists"]));
                
                if (userDTO.Id != findUserById.Id) // Pojistka aby si uživatel sám sobě nezměnil roli (například by si odstranil roli admina)
                {
                    var userGroup = group.UserGroups.First(ug => ug.UserId == findUserById.Id);
                    userGroup.RoleId = (Guid) userDTO.RoleId;   
                }
            }

            if (userDTO.Email != null)
            {
                findUserById.Email = userDTO.Email;
            }

            if (userDTO.FirstName != null)
            {
                findUserById.FirstName = userDTO.FirstName;
            }

            if (userDTO.LastName != null)
            {
                findUserById.LastName = userDTO.LastName;
            }

            findUserById.JwtVersion++;

            await Context.SaveChangesAsync();
            return Ok(Mapper.Map(findUserById, new UserProfileDTO()));
        }

        /// <summary>
        /// Potvrzení emailu uživatele
        /// </summary>
        /// <param name="confirmHash">Potvrzovací token</param>
        /// <returns></returns>
        /// <response code="204">Potvrzení úspěšné</response>
        /// <response code="400">Neplatný požadavek</response>
        [ProducesResponseType(204)]
        [ProducesResponseType(400)]
        [AllowAnonymous]
        [HttpPatch("Confirmed")]
        public async Task<IActionResult> Confirm([Required(ErrorMessage = "Token musí být uveden!")] string confirmHash)
        {
            string email;
            try {
                email = _hasher.GetDecryptedByKey(confirmHash);
            }
            catch (Exception)
            {
                return BadRequest(new ErrorResponse(Localizer["Nevalidní token!"]));
            }
            
            var user = await Context.Users
                .FirstOrDefaultAsync(u => u.Email == email);
            if (user == null) return BadRequest(new ErrorResponse(Localizer["Neplatný token!"]));
            if (!user.Confirmed)
            {
                user.Confirmed = true;
                Context.Users.Update(user);

                await Context.SaveChangesAsync();
            }
            
            return NoContent();
        }
        
        /// <summary>
        /// Aktualizace Firebase tokenu
        /// </summary>
        /// <param name="fbToken">Firebase token</param>
        /// <returns></returns>
        /// <response code="204">Aktualizace úspěšná</response>
        [ProducesResponseType(204)]
        [CheckAccess(IgnoreGroup = true)]
        [HttpPatch("FbToken")]
        public async Task<IActionResult> UpdateFbToken(string fbToken)
        {
            CurrentUser.FirebaseToken = fbToken;
            Context.Users.Update(CurrentUser);
            await Context.SaveChangesAsync();
            return NoContent();
        }

        /// <summary>
        /// Vrací profil uživatele
        /// </summary>
        /// <returns>Profil uživatele</returns>
        /// <response code="200">Profil v pořádku vrácen</response>
        [ProducesResponseType(200)]
        [CheckAccess(IgnoreGroup = true)]
        [HttpGet("Profile")]
        public async Task<ActionResult<UserProfileDTO>> GetProfile(Guid? id)
        {
            var user = CurrentUser;
            if (id != null)
            {
                user = await Context.Users.Include(u => u.UserGroups)
                    .FirstOrDefaultAsync(u => u.Id == id);
            }

            if (user == null)
            {
                return NotFound();
            }

            var result = Mapper.Map<UserProfileDTO>(user);
            result.HomeGroupId = user.UserGroups.First(ug => ug.IsHomeGroup).GroupId;
            result.RoleId = user.UserGroups.Single(ug => ug.GroupId == CurrentGroup.Id).RoleId;
            result.IsSubAccount = user.UserGroups.Single(ug => ug.GroupId == CurrentGroup.Id).IsSubAccount;
            return Ok(result);
        }

        /// <summary>
        /// Zaslání emailu pro reset hesla
        /// </summary>
        /// <param name="email">Email uživatele</param>
        /// <returns></returns>
        /// <response code="400">Email neexistuje, nebo není potvrzený</response>
        /// <response code="204">Email pro reset hesla zaslán</response>
        [ProducesResponseType(400)]
        [ProducesResponseType(204)]
        [AllowAnonymous]
        [HttpPost("PasswordResetEmail")]
        public async Task<IActionResult> SendPasswordResetEmail([FromForm]
            [Required(ErrorMessage = "Email musí být uveden!")][EmailAddress(ErrorMessage = "Neplatný email!")]
            string email)
        {
            var user = await Context.Users.FirstOrDefaultAsync(u => u.Email == email.ToLower());
            if (user == null) return BadRequest(new ErrorResponse(Localizer["Tento email neexistuje!"]));
            if (!user.Confirmed) return BadRequest(new ErrorResponse(Localizer["Tento účet není potvrzený!"]));

            var receivers = new Dictionary<string, string> {{$"{user.FirstName} {user.LastName}", user.Email}};
            var hash = Guid.NewGuid().ToString();
            user.PasswordResetToken = hash;
            await Context.SaveChangesAsync();
            var baseUrl = _configuration["BaseUrl"];
            var buttonLink = $"{baseUrl}/resetPassword?hash={hash}&email={email.ToLower()}";
            await _emailingUtils.SendNoreplyEmail(receivers, Localizer["Obnovení hesla"],
                new DefaultEmail(
                    Localizer["Zapomněli jste heslo?"],
                    $"<p>{Localizer["Pokud jste o obnovu hesla nežádali, tento email ignorujte."]}</p>" +
                    $"<a href='{buttonLink}'>{Localizer["Obnovit heslo"]}</a>"));
            return NoContent();
        }

        /// <summary>
        /// Změna hesla po zapomenutí
        /// </summary>
        /// <param name="hash">Hash pro obnovu hesla</param>
        /// <param name="password">Nové heslo</param>
        /// <returns></returns>
        /// <response code="204">Heslo změněno</response>
        /// <response code="400">Neplatný požadavek</response>
        [ProducesResponseType(400)]
        [ProducesResponseType(204)]
        [AllowAnonymous]
        [HttpPatch("ForgottenPassword")]
        public async Task<IActionResult> ChangeForgottenPassword([Required(ErrorMessage = "Token musí být uveden!")]
            string hash, [FromForm][Required(ErrorMessage = "Heslo musí být uvedeno!")] string password)
        {
            var user = await Context.Users.Where(u => u.PasswordResetToken == hash).FirstOrDefaultAsync();
            if (user == null) return BadRequest(new ErrorResponse(Localizer["Neplatný token!"]));

            if (password.Length < 6)
                return BadRequest(new ErrorResponse(Localizer["Heslo musí mít alespoň 6 znaků!"]));
            
            user.Password = _hasher.GetSha224(password);
            user.PasswordResetToken = null;

            Context.Users.Update(user);
            await Context.SaveChangesAsync();
            return NoContent();
        }

        /// <summary>
        /// Vrací pole emailů obsahujících hledanou frázi
        /// </summary>
        /// <param name="email">Email</param>
        /// <returns>Pole emailů obsahujících hledanou frázi</returns>
        /// <response code="200">Pole vráceno</response>
        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        [ProducesResponseType(200)]
        [HttpGet("UsersWithEmail")]
        public async Task<ActionResult<string[]>> GetUsersWithEmail([Required(ErrorMessage = "Email musí být zadán!")]
            string email)
        {
            var emails = await Context.Users.Where(u => EF.Functions.Like(u.Email, $"%{email}%"))
                .Select(u => u.Email).ToListAsync();
            return Ok(emails);
        }
        
        /// <summary>
        /// Vrací detailní uživatelský účet
        /// </summary>
        /// <param name="email">Email</param>
        /// <returns>Detailní uživatelský účet</returns>
        /// <response code="200">Účet vrácen</response>
        /// <response code="404">Účet nenalezen</response>
        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        [ProducesResponseType(200)]
        [HttpGet("DetailedUser")]
        public async Task<ActionResult<Models.Database.User>> GetDetailedUserAccount([Required(ErrorMessage = "Email musí být zadán!")]
            string email)
        {
            var userAcc = await Context.Users
                .Include(u => u.UserGroups)
                .Include(u => u.LicensesUsed)
                .ThenInclude(l => l.OwnerGroup)
                .FirstOrDefaultAsync(u => u.Email == email.ToLower());
            if (userAcc == null)
                return NotFound(new ErrorResponse(Localizer["Uživatel s tímto emailem nebyl nalezen!"]));
            foreach (var license in userAcc.LicensesUsed)
            {
                license.OwnerGroup.UserGroups = null;
            }
            return Ok(userAcc);
        }
        
        /// <summary>
        /// Maže uživatelský účet
        /// </summary>
        /// <param name="id">GUID uživatele</param>
        /// <returns></returns>
        /// <response code="204">Účet smazán</response>
        /// <response code="404">Účet nenalezen</response>
        [ProducesResponseType(204)]
        [ProducesResponseType(404)]
        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        [HttpDelete]
        public async Task<IActionResult> Delete([Required(ErrorMessage = "Guid musí být vyplněno!")] Guid id)
        {
            var user = await Context.Users.Include(u => u.UserGroups)
                .Include(u => u.LicensesUsed)
                .FirstOrDefaultAsync(u => u.Id == id);  
            if (user == null)
                return NotFound(new ErrorResponse(Localizer["Uživatel s tímto id nebyl nalezen!"]));

            if (user.Id == CurrentUser.Id) return BadRequest();

            var userGroup = user.UserGroups.FirstOrDefault(ug => ug.GroupId == CurrentGroup.Id);
            if (userGroup != null)
            {
                Context.UserGroups.Remove(userGroup);
            }

            var userLicense = user.LicensesUsed.FirstOrDefault(l => l.OwnerGroupId == CurrentGroup.Id);
            if (userLicense != null)
            {
                Context.Licenses.Remove(userLicense);
            }
            Context.Users.Remove(user);
            await Context.SaveChangesAsync();
            return NoContent();
        }

        /// <summary>
        /// Potvrzuje a odpotvrzuje uživatelský účet
        /// </summary>
        /// <param name="id">Uživatelské GUID</param>
        /// <param name="confirmed">Účet potvrzen</param>
        /// <response code="204">Účet potvrzen</response>
        /// <response code="404">Účet nenalezen</response>
        [ProducesResponseType(204)]
        [ProducesResponseType(404)]
        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        [HttpPatch("SuperConfirmed")]
        public async Task<IActionResult> SuperConfirm([Required(ErrorMessage = "Guid musí být vyplněno!")] Guid id,
            [Required(ErrorMessage = "Confirmed musí být vyplněno!")] bool confirmed)
        {
            var user = await Context.Users.FirstOrDefaultAsync(u => u.Id == id);  
            if (user == null)
                return NotFound(new ErrorResponse(Localizer["Uživatel s tímto id nebyl nalezen!"]));
            user.Confirmed = confirmed;
            user.JwtVersion++;
            
            await Context.SaveChangesAsync();
            return NoContent();
        }
        
        /// <summary>
        /// Mění jazyk uživatele
        /// </summary>
        /// <param name="id">Uživatelské GUID</param>
        /// <param name="locale">Jazyk</param>
        /// <response code="204">Jazyk změněn</response>
        /// <response code="404">Účet nenalezen</response>
        [ProducesResponseType(204)]
        [ProducesResponseType(404)]
        [CheckAccess(Permission.SuperAdmin, IgnoreGroup = true)]
        [HttpPatch("SuperLocale")]
        public async Task<IActionResult> SuperLocale([Required(ErrorMessage = "Guid musí být vyplněno!")] Guid id,
            [Required(ErrorMessage = "Locale musí být vyplněno!")] string locale)
        {
            var user = await Context.Users.FirstOrDefaultAsync(u => u.Id == id);  
            if (user == null)
                return NotFound(new ErrorResponse(Localizer["Uživatel s tímto id nebyl nalezen!"]));
            user.Locale = locale;
            user.JwtVersion++;
            
            await Context.SaveChangesAsync();
            return NoContent();
        }
    }
}