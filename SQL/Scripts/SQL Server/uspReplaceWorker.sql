USE VirtualBeggar;
GO

CREATE PROCEDURE hr.uspReplaceWorker (
	@name AS VARCHAR(9)
    ,@profession_id AS INT
	,@endurance_id AS INT
	,@cost AS BIGINT
	,@room AS SMALLINT
)
AS
BEGIN
	UPDATE VirtualBeggar.hr.workers
	SET name = @name,
		profession_id = @profession_id,
		endurance_id = @endurance_id,
		cost = @cost
	WHERE
		room = @room;

END;

EXECUTE hr.uspReplaceWorker 
	'Roger'
	,41
	,5
	,40000000
	,502