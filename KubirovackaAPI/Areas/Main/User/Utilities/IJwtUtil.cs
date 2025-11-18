using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.User.Models.DTO;

namespace KubirovackaAPI.Areas.Main.User.Utilities
{
    public interface IJwtUtil
    {
        GeneratedJwtDTO GenerateNewToken(Models.Database.User user, License license);
    }
}