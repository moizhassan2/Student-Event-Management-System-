SELECT TOP (1000) [Id]
      ,[Name]
      ,[Venue]
      ,[Date]
  FROM [StudentEventDB].[dbo].[Events]
INSERT INTO Events (Name, Venue, Date)
VALUES 
('Tech Talk 2025', 'Auditorium A', '2025-07-15'),
('AI Workshop', 'Lab 3', '2025-07-18'),
('Hackathon', 'Main Hall', '2025-07-25');
SELECT * FROM Events;
