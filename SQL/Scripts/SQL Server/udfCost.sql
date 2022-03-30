USE [VirtualBeggar]
GO

/****** Object:  UserDefinedFunction [hr].[udfCost]    Script Date: 3/30/2022 3:21:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Roody Audain
-- Create date: 2022-3-28
-- Description:	Determine cost
-- =============================================
CREATE FUNCTION [hr].[udfCost](
	@pProfession INT,
	@pEndurance INT)
RETURNS BIGINT
AS
BEGIN
	DECLARE @Result BIGINT
	
	SELECT @Result =
		CASE
			-- Artist
			WHEN @pProfession = 21 AND
				@pEndurance = 1
				THEN 15000
			WHEN @pProfession = 21 AND
				@pEndurance = 2
				THEN 25000
			WHEN @pProfession = 21 AND
				@pEndurance = 3
				THEN 100000
			WHEN @pProfession = 21 AND
				@pEndurance = 4
				THEN 370000
			WHEN @pProfession = 21 AND
				@pEndurance = 5
				THEN 2000000
			WHEN @pProfession = 21 AND
				@pEndurance = 6
				THEN 22000000
			-- Businessman
			WHEN @pProfession = 71 AND
				@pEndurance = 1
				THEN 90
			WHEN @pProfession = 71 AND
				@pEndurance = 2
				THEN 160
			WHEN @pProfession = 71 AND
				@pEndurance = 3
				THEN 270
			WHEN @pProfession = 71 AND
				@pEndurance = 4
				THEN 450
			WHEN @pProfession = 71 AND
				@pEndurance = 5
				THEN 850
			WHEN @pProfession = 71 AND
				@pEndurance = 6
				THEN 1700
			-- Computer Engineer
			WHEN @pProfession = 42 AND
				@pEndurance = 1
				THEN NULL
			WHEN @pProfession = 42 AND
				@pEndurance = 2
				THEN 950000
			WHEN @pProfession = 42 AND
				@pEndurance = 3
				THEN 3050000
			WHEN @pProfession = 42 AND
				@pEndurance = 4
				THEN 10500000
			WHEN @pProfession = 42 AND
				@pEndurance = 5
				THEN 40000000
			WHEN @pProfession = 42 AND
				@pEndurance = 6
				THEN 500000000
			-- Construction Worker
			WHEN @pProfession = 11 AND
				@pEndurance = 1
				THEN 2500
			WHEN @pProfession = 11 AND
				@pEndurance = 2
				THEN 5000
			WHEN @pProfession = 11 AND
				@pEndurance = 3
				THEN 20000
			WHEN @pProfession = 11 AND
				@pEndurance = 4
				THEN 70000
			WHEN @pProfession = 11 AND
				@pEndurance = 5
				THEN NULL
			WHEN @pProfession = 11 AND
				@pEndurance = 6
				THEN 2000000
			-- Cook
			WHEN @pProfession = 22 AND
				@pEndurance = 1
				THEN 15000
			WHEN @pProfession = 22 AND
				@pEndurance = 2
				THEN 25000
			WHEN @pProfession = 22 AND
				@pEndurance = 3
				THEN 100000
			WHEN @pProfession = 22 AND
				@pEndurance = 4
				THEN 370000
			WHEN @pProfession = 22 AND
				@pEndurance = 5
				THEN 2000000
			WHEN @pProfession = 22 AND
				@pEndurance = 6
				THEN 22000000
			-- Doctor
			WHEN @pProfession = 41 AND
				@pEndurance = 1
				THEN 500000
			WHEN @pProfession = 41 AND
				@pEndurance = 2
				THEN 950000
			WHEN @pProfession = 41 AND
				@pEndurance = 3
				THEN 3100000
			WHEN @pProfession = 41 AND
				@pEndurance = 4
				THEN 10500000
			WHEN @pProfession = 41 AND
				@pEndurance = 5
				THEN 40000000
			WHEN @pProfession = 41 AND
				@pEndurance = 6
				THEN 520000000
			-- Firefighter
			WHEN @pProfession = 24 AND
				@pEndurance = 1
				THEN 15000
			WHEN @pProfession = 24 AND
				@pEndurance = 2
				THEN 25000
			WHEN @pProfession = 24 AND
				@pEndurance = 3
				THEN 250000
			WHEN @pProfession = 24 AND
				@pEndurance = 4
				THEN 430000
			WHEN @pProfession = 24 AND
				@pEndurance = 5
				THEN 5000000
			WHEN @pProfession = 24 AND
				@pEndurance = 6
				THEN 22000000
			-- Gardener
			WHEN @pProfession = 13 AND
				@pEndurance = 1
				THEN 2500
			WHEN @pProfession = 13 AND
				@pEndurance = 2
				THEN 5000
			WHEN @pProfession = 13 AND
				@pEndurance = 3
				THEN 20000
			WHEN @pProfession = 13 AND
				@pEndurance = 4
				THEN 100000
			WHEN @pProfession = 13 AND
				@pEndurance = 5
				THEN NULL
			WHEN @pProfession = 13 AND
				@pEndurance = 6
				THEN NULL
			-- Journalist
			WHEN @pProfession = 32 AND
				@pEndurance = 1
				THEN 100000
			WHEN @pProfession = 32 AND
				@pEndurance = 2
				THEN 180000
			WHEN @pProfession = 32 AND
				@pEndurance = 3
				THEN 640000
			WHEN @pProfession = 32 AND
				@pEndurance = 4
				THEN 2400000
			WHEN @pProfession = 32 AND
				@pEndurance = 5
				THEN 10000000
			WHEN @pProfession = 32 AND
				@pEndurance = 6
				THEN 125000000
			-- Lawyer
			WHEN @pProfession = 44 AND
				@pEndurance = 1
				THEN 320000
			WHEN @pProfession = 44 AND
				@pEndurance = 2
				THEN 950000
			WHEN @pProfession = 44 AND
				@pEndurance = 3
				THEN 3050000
			WHEN @pProfession = 44 AND
				@pEndurance = 4
				THEN 10500000
			WHEN @pProfession = 44 AND
				@pEndurance = 5
				THEN 40000000
			WHEN @pProfession = 44 AND
				@pEndurance = 6
				THEN 520000000
			-- Mad Scientist
			WHEN @pProfession = 61 AND
				@pEndurance = 1
				THEN NULL
			WHEN @pProfession = 61 AND
				@pEndurance = 2
				THEN NULL
			WHEN @pProfession = 61 AND
				@pEndurance = 3
				THEN 120000000
			WHEN @pProfession = 61 AND
				@pEndurance = 4
				THEN 400000000
			WHEN @pProfession = 61 AND
				@pEndurance = 5
				THEN 2000000000
			WHEN @pProfession = 61 AND
				@pEndurance = 6
				THEN NULL
			-- Magician
			WHEN @pProfession = 23 AND
				@pEndurance = 1
				THEN 15000
			WHEN @pProfession = 23 AND
				@pEndurance = 2
				THEN 28000
			WHEN @pProfession = 23 AND
				@pEndurance = 3
				THEN 95000
			WHEN @pProfession = 23 AND
				@pEndurance = 4
				THEN 370000
			WHEN @pProfession = 23 AND
				@pEndurance = 5
				THEN 2000000
			WHEN @pProfession = 23 AND
				@pEndurance = 6
				THEN 25000000
			-- Pilot
			WHEN @pProfession = 52 AND
				@pEndurance = 1
				THEN 5000000
			WHEN @pProfession = 52 AND
				@pEndurance = 2
				THEN 5000000
			WHEN @pProfession = 52 AND
				@pEndurance = 3
				THEN 15500000
			WHEN @pProfession = 52 AND
				@pEndurance = 4
				THEN 55000000
			WHEN @pProfession = 52 AND
				@pEndurance = 5
				THEN 260000000
			WHEN @pProfession = 52 AND
				@pEndurance = 6
				THEN 5800000000
			-- Politician
			WHEN @pProfession = 51 AND
				@pEndurance = 1
				THEN NULL
			WHEN @pProfession = 51 AND
				@pEndurance = 2
				THEN 5000000
			WHEN @pProfession = 51 AND
				@pEndurance = 3
				THEN 15500000
			WHEN @pProfession = 51 AND
				@pEndurance = 4
				THEN 55000000
			WHEN @pProfession = 51 AND
				@pEndurance = 5
				THEN 260000000
			WHEN @pProfession = 51 AND
				@pEndurance = 6
				THEN 5800000000
			-- Santa
			WHEN @pProfession = 43 AND
				@pEndurance = 1
				THEN 310000
			WHEN @pProfession = 43 AND
				@pEndurance = 2
				THEN 950000
			WHEN @pProfession = 43 AND
				@pEndurance = 3
				THEN 3050000
			WHEN @pProfession = 43 AND
				@pEndurance = 4
				THEN 10500000
			WHEN @pProfession = 43 AND
				@pEndurance = 5
				THEN 40000000
			WHEN @pProfession = 43 AND
				@pEndurance = 6
				THEN 520000000
			-- Scientist
			WHEN @pProfession = 31 AND
				@pEndurance = 1
				THEN 60000
			WHEN @pProfession = 31 AND
				@pEndurance = 2
				THEN 180000
			WHEN @pProfession = 31 AND
				@pEndurance = 3
				THEN 640000
			WHEN @pProfession = 31 AND
				@pEndurance = 4
				THEN 2400000
			WHEN @pProfession = 31 AND
				@pEndurance = 5
				THEN 10000000
			WHEN @pProfession = 31 AND
				@pEndurance = 6
				THEN 125000000
			ELSE NULL
		END

	RETURN @Result
END;
GO


