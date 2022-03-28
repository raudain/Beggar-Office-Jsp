-- =============================================
-- Author:		Roody Audain
-- Create date: 2022-3-28
-- Description:	Determine cost
-- =============================================
CREATE FUNCTION hr.udfCost(
	@pProfession VARCHAR(19),
	@pEndurance VARCHAR(12))
RETURNS BIGINT
AS
BEGIN
	DECLARE @Result BIGINT
	
	SELECT @Result =
		CASE
			-- Artist
			WHEN @pProfession = 'Artist' AND
				@pEndurance = 'Lazy'
				THEN 15000
			WHEN @pProfession = 'Artist' AND
				@pEndurance = 'Sleepy'
				THEN 25000
			WHEN @pProfession = 'Artist' AND
				@pEndurance = 'Diligent'
				THEN 100000
			WHEN @pProfession = 'Artist' AND
				@pEndurance = 'Productive'
				THEN 370000
			WHEN @pProfession = 'Artist' AND
				@pEndurance = 'Hard-working'
				THEN 2000000
			WHEN  @pProfession = 'Artist' AND
				@pEndurance = 'Tireless'
				THEN 22000000
			-- Businessman
			WHEN  @pProfession = 'Businessman' AND
				@pEndurance = 'Lazy'
				THEN 90
			WHEN  @pProfession = 'Businessman' AND
				@pEndurance = 'Sleepy'
				THEN 160
			WHEN  @pProfession = 'Businessman' AND
				@pEndurance = 'Diligent'
				THEN 270
			WHEN  @pProfession = 'Businessman' AND
				@pEndurance = 'Productive'
				THEN 450
			WHEN  @pProfession = 'Businessman' AND
				@pEndurance = 'Hard-working'
				THEN 850
			WHEN  @pProfession = 'Businessman' AND
				@pEndurance = 'Tireless'
				THEN 1700
			-- Computer Engineer
			WHEN  @pProfession = 'Computer Engineer' AND
				@pEndurance = 'Lazy'
				THEN NULL
			WHEN  @pProfession = 'Computer Engineer' AND
				@pEndurance = 'Sleepy'
				THEN 950000
			WHEN  @pProfession = 'Computer Engineer' AND
				@pEndurance = 'Diligent'
				THEN 3050000
			WHEN  @pProfession = 'Computer Engineer' AND
				@pEndurance = 'Productive'
				THEN 10500000
			WHEN  @pProfession = 'Computer Engineer' AND
				@pEndurance = 'Hard-working'
				THEN 40000000
			WHEN  @pProfession = 'Computer Engineer' AND
				@pEndurance = 'Tireless'
				THEN 500000000
			-- Construction Worker
			WHEN  @pProfession = 'Construction Worker' AND
				@pEndurance = 'Lazy'
				THEN 2500
			WHEN  @pProfession = 'Construction Worker' AND
				@pEndurance = 'Sleepy'
				THEN 5000
			WHEN  @pProfession = 'Construction Worker' AND
				@pEndurance = 'Diligent'
				THEN 20000
			WHEN  @pProfession = 'Construction Worker' AND
				@pEndurance = 'Productive'
				THEN 70000
			WHEN  @pProfession = 'Construction Worker' AND
				@pEndurance = 'Hard-working'
				THEN NULL
			WHEN  @pProfession = 'Construction Worker' AND
				@pEndurance = 'Tireless'
				THEN 2000000
			-- Cook
			WHEN  @pProfession = 'Cook' AND
				@pEndurance = 'Lazy'
				THEN 15000
			WHEN  @pProfession = 'Cook' AND
				@pEndurance = 'Sleepy'
				THEN 25000
			WHEN  @pProfession = 'Cook' AND
				@pEndurance = 'Diligent'
				THEN 100000
			WHEN  @pProfession = 'Cook' AND
				@pEndurance = 'Productive'
				THEN 430000
			WHEN  @pProfession = 'Cook' AND
				@pEndurance = 'Hard-working'
				THEN 2000000
			WHEN  @pProfession = 'Cook' AND
				@pEndurance = 'Tireless'
				THEN 22000000
			-- Doctor
			WHEN  @pProfession = 'Doctor' AND
				@pEndurance = 'Lazy'
				THEN 500000
			WHEN  @pProfession = 'Doctor' AND
				@pEndurance = 'Sleepy'
				THEN 950000
			WHEN  @pProfession = 'Doctor' AND
				@pEndurance = 'Diligent'
				THEN 3100000
			WHEN  @pProfession = 'Doctor' AND
				@pEndurance = 'Productive'
				THEN 10500000
			WHEN  @pProfession = 'Doctor' AND
				@pEndurance = 'Hard-working'
				THEN 40000000
			WHEN  @pProfession = 'Doctor' AND
				@pEndurance = 'Tireless'
				THEN 520000000
			-- Firefighter
			WHEN  @pProfession = 'Firefighter' AND
				@pEndurance = 'Lazy'
				THEN 15000
			WHEN  @pProfession = 'Firefighter' AND
				@pEndurance = 'Sleepy'
				THEN 25000
			WHEN  @pProfession = 'Firefighter' AND
				@pEndurance = 'Diligent'
				THEN 250000
			WHEN  @pProfession = 'Firefighter' AND
				@pEndurance = 'Productive'
				THEN 430000
			WHEN  @pProfession = 'Firefighter' AND
				@pEndurance = 'Hard-working'
				THEN 5000000
			WHEN  @pProfession = 'Firefighter' AND
				@pEndurance = 'Tireless'
				THEN 22000000
			-- Gardener
			WHEN  @pProfession = 'Gardener' AND
				@pEndurance = 'Lazy'
				THEN 2500
			WHEN  @pProfession = 'Gardener' AND
				@pEndurance = 'Sleepy'
				THEN 5000
			WHEN  @pProfession = 'Gardener' AND
				@pEndurance = 'Diligent'
				THEN 20000
			WHEN  @pProfession = 'Gardener' AND
				@pEndurance = 'Productive'
				THEN 100000
			WHEN  @pProfession = 'Gardener' AND
				@pEndurance = 'Hard-working'
				THEN NULL
			WHEN  @pProfession = 'Gardener' AND
				@pEndurance = 'Tireless'
				THEN NULL
			-- Journalist
			WHEN  @pProfession = 'Journalist' AND
				@pEndurance = 'Lazy'
				THEN 100000
			WHEN  @pProfession = 'Journalist' AND
				@pEndurance = 'Sleepy'
				THEN 180000
			WHEN  @pProfession = 'Journalist' AND
				@pEndurance = 'Diligent'
				THEN 640000
			WHEN  @pProfession = 'Journalist' AND
				@pEndurance = 'Productive'
				THEN 2400000
			WHEN  @pProfession = 'Journalist' AND
				@pEndurance = 'Hard-working'
				THEN 10000000
			WHEN  @pProfession = 'Journalist' AND
				@pEndurance = 'Tireless'
				THEN 125000000
			-- Lawyer
			WHEN  @pProfession = 'Lawyer' AND
				@pEndurance = 'Lazy'
				THEN 320000
			WHEN  @pProfession = 'Lawyer' AND
				@pEndurance = 'Sleepy'
				THEN 950000
			WHEN  @pProfession = 'Lawyer' AND
				@pEndurance = 'Diligent'
				THEN 3050000
			WHEN  @pProfession = 'Lawyer' AND
				@pEndurance = 'Productive'
				THEN 10500000
			WHEN  @pProfession = 'Lawyer' AND
				@pEndurance = 'Hard-working'
				THEN 40000000
			WHEN  @pProfession = 'Lawyer' AND
				@pEndurance = 'Tireless'
				THEN 520000000
			-- Mad Scientist
			WHEN  @pProfession = 'Mad Scientist' AND
				@pEndurance = 'Lazy'
				THEN NULL
			WHEN  @pProfession = 'Mad Scientist' AND
				@pEndurance = 'Sleepy'
				THEN NULL
			WHEN  @pProfession = 'Mad Scientist' AND
				@pEndurance = 'Diligent'
				THEN 120000000
			WHEN  @pProfession = 'Mad Scientist' AND
				@pEndurance = 'Productive'
				THEN 400000000
			WHEN  @pProfession = 'Mad Scientist' AND
				@pEndurance = 'Hard-working'
				THEN 2000000000
			WHEN  @pProfession = 'Mad Scientist' AND
				@pEndurance = 'Tireless'
				THEN NULL
			-- Magician
			WHEN  @pProfession = 'Magician' AND
				@pEndurance = 'Lazy'
				THEN 15000
			WHEN  @pProfession = 'Magician' AND
				@pEndurance = 'Sleepy'
				THEN 28000
			WHEN  @pProfession = 'Magician' AND
				@pEndurance = 'Diligent'
				THEN 95000
			WHEN  @pProfession = 'Magician' AND
				@pEndurance = 'Productive'
				THEN 370000
			WHEN  @pProfession = 'Magician' AND
				@pEndurance = 'Hard-working'
				THEN 2000000
			WHEN  @pProfession = 'Magician' AND
				@pEndurance = 'Tireless'
				THEN 25000000
			-- Pilot
			WHEN  @pProfession = 'Pilot' AND
				@pEndurance = 'Lazy'
				THEN 5000000
			WHEN  @pProfession = 'Pilot' AND
				@pEndurance = 'Sleepy'
				THEN 5000000
			WHEN  @pProfession = 'Pilot' AND
				@pEndurance = 'Diligent'
				THEN 15500000
			WHEN  @pProfession = 'Pilot' AND
				@pEndurance = 'Productive'
				THEN 55000000
			WHEN  @pProfession = 'Pilot' AND
				@pEndurance = 'Hard-working'
				THEN 260000000
			WHEN  @pProfession = 'Pilot' AND
				@pEndurance = 'Tireless'
				THEN 5800000000
			-- Politician
			WHEN  @pProfession = 'Politician' AND
				@pEndurance = 'Lazy'
				THEN NULL
			WHEN  @pProfession = 'Politician' AND
				@pEndurance = 'Sleepy'
				THEN 5000000
			WHEN  @pProfession = 'Politician' AND
				@pEndurance = 'Diligent'
				THEN 15500000
			WHEN  @pProfession = 'Politician' AND
				@pEndurance = 'Productive'
				THEN 55000000
			WHEN  @pProfession = 'Politician' AND
				@pEndurance = 'Hard-working'
				THEN 260000000
			WHEN  @pProfession = 'Politician' AND
				@pEndurance = 'Tireless'
				THEN 5800000000
			-- Santa
			WHEN  @pProfession = 'Santa' AND
				@pEndurance = 'Lazy'
				THEN 310000
			WHEN  @pProfession = 'Santa' AND
				@pEndurance = 'Sleepy'
				THEN 950000
			WHEN  @pProfession = 'Santa' AND
				@pEndurance = 'Diligent'
				THEN 3050000
			WHEN  @pProfession = 'Santa' AND
				@pEndurance = 'Productive'
				THEN 10500000
			WHEN  @pProfession = 'Santa' AND
				@pEndurance = 'Hard-working'
				THEN 40000000
			WHEN  @pProfession = 'Santa' AND
				@pEndurance = 'Tireless'
				THEN 520000000
			-- Scientist
			WHEN  @pProfession = 'Scientist' AND
				@pEndurance = 'Lazy'
				THEN 60000
			WHEN  @pProfession = 'Scientist' AND
				@pEndurance = 'Sleepy'
				THEN 180000
			WHEN  @pProfession = 'Scientist' AND
				@pEndurance = 'Diligent'
				THEN 640000
			WHEN  @pProfession = 'Scientist' AND
				@pEndurance = 'Productive'
				THEN 2400000
			WHEN  @pProfession = 'Scientist' AND
				@pEndurance = 'Hard-working'
				THEN 10000000
			WHEN  @pProfession = 'Scientist' AND
				@pEndurance = 'Tireless'
				THEN 125000000
			ELSE NULL
		END

	RETURN @Result
END;
