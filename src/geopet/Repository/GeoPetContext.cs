using Microsoft.EntityFrameworkCore;
using geo_pet.Models;

namespace geo_pet.Repository;

public class GeoPetContext : DbContext, IGeoPetContext
{
    public GeoPetContext(DbContextOptions<GeoPetContext> options) : base(options) { }
    public GeoPetContext() { }

    public DbSet<User> Users { get; set; }
    public DbSet<Pet> Pets { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        if (!optionsBuilder.IsConfigured)
        {
            optionsBuilder.UseSqlServer(@"Server=127.0.0.1;Database=pets;User=SA;Password=Password12!");
        }
    }

    protected override void OnModelCreating(ModelBuilder mb)
    {
        mb.Entity<Pet>()
            .HasOne(p => p.User)
            .WithMany(u => u.Pets)
            .HasForeignKey(p => p.UserId);
    }
}