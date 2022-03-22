SELECT [room] AS [Room]
      ,[name] AS [Name]
      ,[profession_id] AS [Profession ID]
      ,[endurance_id] AS [Endurance ID]
      ,FORMAT(cost,'#,#') AS Cost
  FROM [VirtualBeggar].[hr].[workers]