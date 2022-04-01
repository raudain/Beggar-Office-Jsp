/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Room]
      ,[Name]
      ,[Profession]
      ,[Endurance]
      ,[Cost with Comma]
  FROM [VirtualBeggar].[hr].[vw_worker_costs]
  ORDER BY [Cost]