namespace TBL.Data;

public static class UserData
{
    public static List<User> Users = new List<User>
{
    new User { Login = "cl", Password = "cl123", Role = "Client", Email = "client@example.com", Photo = "default_avatar.png" },
    new User { Login = "spec", Password = "spec123", Role = "Specialist", Email = "specialist@example.com", Photo = "default_avatar.png" },
    new User { Login = "mod", Password = "mod123", Role = "Moderator", Email = "moderator@example.com", Photo = "default_avatar.png" }
};
}