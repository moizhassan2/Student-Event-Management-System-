SELECT TOP (1000) [StudentId]
      ,[EventId]
  FROM [StudentEventDB].[dbo].[Registrations]
  INSERT INTO Registrations (StudentId, EventId)
VALUES
(1, 1), -- Alice registered for Tech Talk
(1, 2), -- Alice registered for AI Workshop
(2, 2), -- Bob registered for AI Workshop
(3, 3); -- Charlie registered for Hackathon
select * From Registrations