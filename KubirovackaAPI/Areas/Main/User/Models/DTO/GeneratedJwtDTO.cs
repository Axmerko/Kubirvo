using System;

namespace KubirovackaAPI.Areas.Main.User.Models.DTO
{
    public class GeneratedJwtDTO
    {
        public string Token { get; set; }
        public DateTimeOffset Expiration { get; set; }

        public GeneratedJwtDTO(string token, DateTimeOffset expiration)
        {
            Token = token;
            Expiration = expiration;
        }
    }

}