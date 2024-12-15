using Microsoft.EntityFrameworkCore;
using System.IO;
using System.Reflection;
using System.Net.Http.Json;
using TBL.Models;

namespace TBL.Data
{
    public class AppDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Message> Messages { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "TBL.db");
            optionsBuilder.UseSqlite($"Data Source={dbPath}");
        }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Связи между таблицами
            modelBuilder.Entity<Message>()
                .HasOne(m => m.Sender)
                .WithMany()
                .HasForeignKey(m => m.SenderId)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Message>()
                .HasOne(m => m.Receiver)
                .WithMany()
                .HasForeignKey(m => m.ReceiverId)
                .OnDelete(DeleteBehavior.Restrict);
        }
        public class ApiService
        {
            private readonly HttpClient _client;

            public ApiService()
            {
                _client = new HttpClient { BaseAddress = new Uri("http://localhost:5000/api/") };
            }

            public async Task<List<User>> GetUsersAsync()
            {
                return await _client.GetFromJsonAsync<List<User>>("Users") ?? new List<User>();
            }

            public async Task<bool> AddUserAsync(User user)
            {
                var response = await _client.PostAsJsonAsync("Users", user);
                return response.IsSuccessStatusCode;
            }
        }
        private async Task SyncDatabaseAsync()
        {
            var apiService = new ApiService();
            var serverUsers = await apiService.GetUsersAsync();

            using (var db = new AppDbContext())
            {
                db.Users.RemoveRange(db.Users); // Очистка локальных данных
                db.Users.AddRange(serverUsers); // Добавление данных из API
                db.SaveChanges();
            }
        }

    }
}
