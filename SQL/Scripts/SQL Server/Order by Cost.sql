SELECT [Room]
      ,[Name]
      ,[Profession]
      ,[Endurance]
      ,[Cost]
      ,[Cost with Comma]
  FROM [VirtualBeggar].[hr].[vw_workers]
  WHERE 1 = 1
  AND [Cost] <> 0
  AND [Profession] <> 'Businessman'
  ORDER BY [Cost]