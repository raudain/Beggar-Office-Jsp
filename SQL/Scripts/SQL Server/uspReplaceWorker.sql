USE VirtualBeggar;
GO

CREATE PROCEDURE uspReplaceWorker
AS
BEGIN
	UPDATE VirtualBeggar.hr.workers
	SET name = 0.02,
		profession_id = 0.01,
		endurance_id = 1,
		cost = 1
	WHERE
		room = 0.01;

END;