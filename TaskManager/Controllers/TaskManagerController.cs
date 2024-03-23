using System;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using TaskManager.Data;
using TaskManager.Models;

namespace TaskManager.Controllers
{
    public class TaskManagerController : Controller
    {
        private readonly TaskManagerContext _context;

        public TaskManagerController(TaskManagerContext context)
        {
            _context = context;
        }

        public string GetIconFileName(string fileType)
        {
            switch (fileType.ToLower())
            {
                case ".pdf":
                    return "pdf-icon.png";
                case ".txt":
                    return "txt-icon.png";
                default:
                    return "default-icon.png";
            }
        }

        public async Task<IActionResult> Index()
        {
            ViewBag.GetIconFileName = new Func<string, string>(GetIconFileName);
            var tasks = await _context.TaskManagerModels
                .OrderByDescending(m => m.IsDeleted)
                .Where(m => !m.IsDeleted)
                .ToListAsync();

            return View(tasks);
        }

        public async Task<IActionResult> Details(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var taskManagerModels = await _context.TaskManagerModels
                .FirstOrDefaultAsync(m => m.Id == id);
            if (taskManagerModels == null)
            {
                return NotFound();
            }

            return View(taskManagerModels);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Title,ReleaseDate,Task,Notes,UploadedFile")] TaskManagerModels taskManagerModels)
        {
            if (ModelState.IsValid)
            {
                if (taskManagerModels.UploadedFile != null && taskManagerModels.UploadedFile.Length > 0)
                {
                    var fileName = Guid.NewGuid().ToString() + Path.GetExtension(taskManagerModels.UploadedFile.FileName);
                    var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "uploads", fileName);

                    using (var fileStream = new FileStream(filePath, FileMode.Create))
                    {
                        await taskManagerModels.UploadedFile.CopyToAsync(fileStream);
                    }

                    taskManagerModels.FilePath = "/uploads/" + fileName; // Save the relative path to the database
                }

                _context.Add(taskManagerModels);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(taskManagerModels);
        }

        public async Task<IActionResult> Edit(Guid id)
        {
            ViewBag.GetIconFileName = new Func<string, string>(GetIconFileName);

            // Získajte existujúcu položku z databázy podľa zadaného id
            var taskManagerModel = await _context.TaskManagerModels.FindAsync(id);

            if (taskManagerModel == null)
            {
                return NotFound();
            }

            // Vráťte zobrazenie s existujúcimi údajmi pre editáciu
            return View(taskManagerModel);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Guid id, [Bind("Id,Title,ReleaseDate,Task,Notes,UploadedFile")] TaskManagerModels taskManagerModel)
        {
            if (id != taskManagerModel.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                var existingTask = await _context.TaskManagerModels.FindAsync(id);

                if (existingTask == null)
                {
                    return NotFound();
                }

                // Update existingTask properties with values from taskManagerModel
                existingTask.Title = taskManagerModel.Title;
                existingTask.ReleaseDate = taskManagerModel.ReleaseDate;
                existingTask.Task = taskManagerModel.Task;
                existingTask.Notes = taskManagerModel.Notes;

                // Check if a new file was uploaded
                if (taskManagerModel.UploadedFile != null && taskManagerModel.UploadedFile.Length > 0)
                {
                    var fileName = Guid.NewGuid().ToString() + Path.GetExtension(taskManagerModel.UploadedFile.FileName);
                    var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "uploads", fileName);

                    using (var fileStream = new FileStream(filePath, FileMode.Create))
                    {
                        await taskManagerModel.UploadedFile.CopyToAsync(fileStream);
                    }

                    // Update file path in the database
                    existingTask.FilePath = "/uploads/" + fileName;
                }

                try
                {
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TaskManagerModelsExists(id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }

                return RedirectToAction(nameof(Index));
            }
            return View(taskManagerModel);
        }

        public async Task<IActionResult> Delete(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var taskManagerModels = await _context.TaskManagerModels
                .FirstOrDefaultAsync(m => m.Id == id);
            if (taskManagerModels == null)
            {
                return NotFound();
            }

            return View(taskManagerModels);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(Guid id)
        {
            var taskManagerModels = await _context.TaskManagerModels.FindAsync(id);
            if (taskManagerModels == null)
            {
                return NotFound();
            }

            // Nastavte hodnotu IsDeleted na true a uložte čas smazání
            taskManagerModels.IsDeleted = true;
            taskManagerModels.DeletedAt = DateTime.Now;

            await _context.SaveChangesAsync();

            // Dotaz na smazané položky
            var deletedItems = await _context.TaskManagerModels
                .Where(m => m.IsDeleted)
                .ToListAsync();

            return RedirectToAction(nameof(Index));
        }

        private bool TaskManagerModelsExists(Guid id)
        {
            return _context.TaskManagerModels.Any(e => e.Id == id);
        }

        // Action method to download file
        public async Task<IActionResult> DownloadFile(Guid id)
        {
            var task = await _context.TaskManagerModels.FirstOrDefaultAsync(t => t.Id == id);
            if (task == null)
            {
                return NotFound();
            }

            if (task.FilePath == null)
            {
                return NotFound(); // or handle the case when FilePath is null
            }

            var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", task.FilePath.TrimStart('/'));

            if (!System.IO.File.Exists(filePath))
            {
                return NotFound();
            }

            var memory = new MemoryStream();
            using (var stream = new FileStream(filePath, FileMode.Open))
            {
                await stream.CopyToAsync(memory);
            }
            memory.Position = 0;
            return File(memory, "application/octet-stream", Path.GetFileName(filePath));
        }
    }
}
