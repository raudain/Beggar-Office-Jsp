/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [room] AS Room
      ,[name] AS Name
      ,[profession] AS Profession
      ,[endurance] AS Endurance
  FROM [VirtualBeggar].[hr].[vw_workers]
