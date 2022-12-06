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
            optionsBuilder.UseSqlServer(@"Server=127.0.0.1;Database=Geopet;User=SA;Password=Password12!");
        }
    }

    protected override void OnModelCreating(ModelBuilder mb)
    {
        mb.Entity<Pet>()
            .HasOne(b => b.User)
            .WithMany(a => a.Pets)
            .HasForeignKey(b => b.UserId);
    }
}