public class User
{
    public string Login { get; set; }
    public string Password { get; set; }
    public string Role { get; set; }
    public string Email { get; set; } // Добавляем поле Email
    public string Photo { get; set; } = "default_avatar.png";
}

