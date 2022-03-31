ALTER TABLE VirtualBeggar.hr.workers
ADD cost AS (hr.udfCost(profession_id, endurance_id));
