ALTER TABLE VirtualBeggar.hr.workers
	DROP COLUMN cost;

ALTER TABLE VirtualBeggar.hr.workers
	ADD cost AS (hr.udfCost(profession_id, endurance_id));
