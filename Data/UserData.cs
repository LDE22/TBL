using TBL.Models;
namespace TBL.Data;

public static class UserData
{
    public static List<User> Users = new List<User>
{
    new User { Username = "cl", Password = "cl123", Role = "Client", Email = "client@example.com", Photo = "default_avatar.png" },
    new User { Username = "spec", Password = "spec123", Role = "Specialist", Email = "specialist@example.com", Photo = "default_avatar.png" },
    new User { Username = "mod", Password = "mod123", Role = "Moderator", Email = "moderator@example.com", Photo = "default_avatar.png" }
};
}