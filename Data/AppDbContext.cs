using Microsoft.EntityFrameworkCore;
using TBL.Models;

namespace TBL.Data;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

    public DbSet<Message> Chats { get; set; }
    public DbSet<User> Users { get; set; } = null!;
    public DbSet<Order> Orders { get; set; } = null!;

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseNpgsql(
            "Host=junction.proxy.rlwy.net;Port=47042;Database=railway;Username=postgres;Password=PuYeMbjdgtRkBbqeQvkfXThbgaBNNWAr;Ssl Mode=Require");
    }
}
