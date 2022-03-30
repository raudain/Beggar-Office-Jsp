USE VirtualBeggar;
GO

CREATE PROCEDURE hr.uspReplaceWorker (
	@name AS VARCHAR(9)
    ,@profession_id AS INT
	,@endurance_id AS INT
	,@room AS SMALLINT
)
AS
BEGIN
	UPDATE VirtualBeggar.hr.workers
	SET name = @name,
		profession_id = @profession_id,
		endurance_id = @endurance_id,
	WHERE
		room = @room;

END;

EXECUTE hr.uspReplaceWorker 
	'Vivian'
	,52
	,4
	,55000000
	,1202
