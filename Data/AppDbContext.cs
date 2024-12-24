using Microsoft.EntityFrameworkCore;
using TBL.Models;

namespace TBL.Data;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

    public DbSet<Message> Chats { get; set; }
    public DbSet<User> Users { get; set; } = null!;
    public DbSet<Order> Orders { get; set; } = null!;
    public DbSet<Favorite> Favorites { get; set; }

    public DbSet<Meeting> Meetings { get; set; }
}
