CREATE VIEW hr.vw_workers (
	room,
	name,
	profession,
	endurance
)
AS
	SELECT
		v.room,
		v.name,
		p.type,
		e.level
	FROM
		VirtualBeggar.hr.workers v
	INNER JOIN VirtualBeggar.hr.professions p
		ON p.id = v.profession_id
	INNER JOIN VirtualBeggar.hr.endurances e
		ON e.id = v.endurance_id
