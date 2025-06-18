using Microsoft.EntityFrameworkCore;
public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

    public DbSet<Event> Events { get; set; }
    public DbSet<Student> Students { get; set; }
    public DbSet<Registration> Registrations { get; set; }
    public DbSet<Feedback> Feedbacks { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Registration>()
            .HasKey(r => new { r.StudentId, r.EventId });

        modelBuilder.Entity<Registration>()
            .HasOne(r => r.Student)
            .WithMany(s => s.Registrations)
            .HasForeignKey(r => r.StudentId);

        modelBuilder.Entity<Registration>()
            .HasOne(r => r.Event)
            .WithMany(e => e.Registrations)
            .HasForeignKey(r => r.EventId);
    }
}
