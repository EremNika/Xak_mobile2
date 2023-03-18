using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Xamarin.Essentials;

namespace Xak_mobile2.Models
{
    public class BaseContext : DbContext
    {
        public BaseContext()
        {
            //Database.EnsureDeleted();
            Database.EnsureCreated();
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "Hack.db3");

            optionsBuilder
                .UseSqlite($"Filename={dbPath}");
            optionsBuilder.EnableSensitiveDataLogging(true);
        }
        public DbSet<Comments> Comments { get; set; }
        public DbSet<Projects> Projects { get; set; }
        public DbSet<Tasks> Tasks { get; set; }
        public DbSet<Users> Users { get; set; }

    }
}
