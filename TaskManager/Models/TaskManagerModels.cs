using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TaskManager.Models
{
    public class TaskManagerModels
    {
        public Guid Id { get; set; }

        [Display(Name = "Title")]
        public string? Title { get; set; }

        [Display(Name = "Release Date")]
        public DateTime ReleaseDate { get; set; }

        [Display(Name = "Task")]
        public string? Task { get; set; }

        [Display(Name = "Notes")]
        public string? Notes { get; set; }

        [Display(Name = "Is Deleted")]
        public bool IsDeleted { get; set; }

        [Display(Name = "Deleted At")]
        public DateTime? DeletedAt { get; set; }

        [NotMapped]
        public IFormFile? UploadedFile { get; set; }

        [Display(Name = "File Path")]
        public string? FilePath { get; set; }
    }
}
