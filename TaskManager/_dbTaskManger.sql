
CREATE TABLE [TaskManagerModels] (
    [Id] uniqueidentifier NOT NULL DEFAULT NEWID(),
    [Title] nvarchar(max) NULL,
    [ReleaseDate] datetime2 NOT NULL,
    [Task] nvarchar(max) NULL,
    [Notes] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_TaskManagerModels] PRIMARY KEY ([Id])
);

--Sorting the table
SELECT Id, Title, ReleaseDate, Task, Notes, IsDeleted, DeletedAt, FilePath, FileData, FileContentType
FROM TaskManagerModels
ORDER BY IsDeleted, DeletedAt DESC;


INSERT INTO TaskManagerModels (Title, ReleaseDate, Task, Notes, IsDeleted, DeletedAt, FilePath, FileData, FileContentType)
VALUES ('Nový úloha', GETDATE(), 'Popis úlohy', 'Poznámky k úlohe', 0, NULL, 'Cesta/k/súboru', 'Dáta_súboru', 'Typ_súboru');


UPDATE TaskManagerModels
SET Title = 'Nový názov úlohy', Task = 'Nový popis úlohy', Notes = 'Nové poznámky k úlohe'
WHERE Id = 'ID_riadka_ktorý_chcete_aktualizovať';


DELETE FROM TaskManagerModels
WHERE Id = 'ID_riadka_ktorý_chcete_vymazať';


DELETE FROM TaskManagerModels
WHERE IsDeleted = 1;


SELECT TOP (1000) [Id]
      ,[Title]
      ,[ReleaseDate]
      ,[Task]
      ,[Notes]
      ,[IsDeleted]
      ,[DeletedAt]
      ,[FilePath]
      ,[FileData]
      ,[FileContentType]
FROM [Task_Manager].[dbo].[TaskManagerModels]
ORDER BY CASE WHEN IsDeleted = 1 THEN 1 ELSE 0 END, ReleaseDate DESC;
