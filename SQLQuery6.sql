SELECT TOP (1000) [Id]
      ,[EventId]
      ,[Comment]
      ,[Rating]
  FROM [StudentEventDB].[dbo].[Feedbacks]
  -- First, update event dates if needed (for testing feedback logic)
UPDATE Events SET Date = '2024-06-01' WHERE Id = 1;
UPDATE Events SET Date = '2024-06-05' WHERE Id = 2;

-- Now insert feedback
INSERT INTO Feedbacks (EventId, Comment, Rating)
VALUES
(1, 'Great session on technology trends!', 5),
(2, 'Very informative workshop on AI.', 4);
select * From Feedbacks