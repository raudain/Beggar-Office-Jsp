SELECT * FROM workers;

SELECT * FROM workers
WHERE profession = 'Artist'
ORDER BY endurance;

UPDATE workers
SET Cost='2200000'
WHERE Profession='Artist'
	AND endurance='Hardworking';

SELECT * FROM workers
WHERE profession = 'Computer Engineer'
ORDER BY endurance;

SELECT FORMAT(12332.123456, 4);

UPDATE workers
SET Cost='250000'
WHERE Profession='Firefighter'
AND endurance='Diligent';

SELECT * FROM workers
WHERE profession = 'Firefighter'
ORDER BY endurance;