/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Room]
      ,[Name]
      ,[Profession]
      ,[Endurance]
      ,[Cost]
      ,[Cost with Comma]
  FROM [VirtualBeggar].[hr].[vw_workers]
  WHERE [Cost] <> 0
  AND [Profession] <> 'Businessman'
  ORDER BY [Cost]