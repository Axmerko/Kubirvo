using System;
using System.Collections;
using System.Globalization;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.User.Models.DTO;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;

namespace KubirovackaAPI.Areas.Main.User.Utilities
{
    public class JwtUtil : IJwtUtil
    {
        private readonly IConfiguration _config;
        private readonly IUserUtil _userUtil;
        
        public JwtUtil(IConfiguration config, IUserUtil userUtil)
        {
            _config = config;
            _userUtil = userUtil;
        }
        public GeneratedJwtDTO GenerateNewToken(Models.Database.User user, License license)
        {
            DateTimeOffset premiumExpirationDate = license?.ExpirationDate ?? user.RegisteredAt;
            var claims = new[] 
            {
                new Claim("user_id", user.Id.ToString()),
                new Claim(JwtRegisteredClaimNames.Email, user.Email), 
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                new Claim(JwtRegisteredClaimNames.GivenName, user.FirstName),
                new Claim(JwtRegisteredClaimNames.FamilyName, user.LastName),
                new Claim("premium_expiration_date", premiumExpirationDate.ToString(CultureInfo.InvariantCulture)), 
                new Claim("token_version", user.JwtVersion.ToString()),
                new Claim("is_admin", user.IsAdmin.ToString()),
                new Claim("license_scopes", ScopesToString(license?.LicenseScopes) ?? ""), 
            };
 
            var key = new SymmetricSecurityKey(
                Encoding.UTF8.GetBytes(_config["Tokens:Key"])); 
            var credentials = new SigningCredentials(key,
                SecurityAlgorithms.HmacSha256); 
 
            var token = new JwtSecurityToken( 
                _config["Tokens:Issuer"], 
                _config["Tokens:Audience"], 
                claims, 
                expires: DateTime.UtcNow.AddYears(10), 
                signingCredentials: credentials 
            );
            
            return new GeneratedJwtDTO(new JwtSecurityTokenHandler().WriteToken(token), token.ValidTo);
        }

        #nullable enable
        private static string? ScopesToString(BitArray licenseScopes)
        {
            if (licenseScopes == null)
            {
                return null;
            }
            return licenseScopes.Cast<object>().Aggregate("", (current, scope) => current + ((bool) scope ? 1 : 0));
        }
        #nullable disable
    }
}