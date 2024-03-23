using Microsoft.EntityFrameworkCore;

namespace TaskManager.Data
{
    public class TaskManagerContext : DbContext
    {
        public TaskManagerContext(DbContextOptions<TaskManagerContext> options)
            : base(options)
        {
        }

        public DbSet<TaskManager.Models.TaskManagerModels> TaskManagerModels { get; set; } = default!;
    }
}