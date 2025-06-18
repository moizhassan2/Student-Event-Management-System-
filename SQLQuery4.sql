SELECT TOP (1000) [Id]
      ,[Name]
      ,[Email]
  FROM [StudentEventDB].[dbo].[Students]
  INSERT INTO Students (Name, Email)
VALUES 
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Charlie Brown', 'charlie@example.com');
select*from Students