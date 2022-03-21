USE VirtualBeggar;
GO


CREATE PROCEDURE hr.uspFindWorkers (@profession AS VARCHAR(19))
AS
BEGIN
    SELECT
        w.room,
        w.name,
		e.level
    FROM 
        VirtualBeggar.hr.workers w
	INNER JOIN
		VirtualBeggar.hr.endurances e
			ON e.id = w.endurance_id
	INNER JOIN
		VirtualBeggar.hr.professions p
			ON p.id = w.profession_id
    WHERE
        p.type = @profession
    ORDER BY
        room;
END;

EXECUTE hr.uspFindWorkers 'Magician';
