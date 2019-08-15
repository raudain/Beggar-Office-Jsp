ALTER TABLE workers
DROP COLUMN cost;

ALTER TABLE workers
ADD cost int(11);

ALTER TABLE Workers
CHANGE Position Room
VARCHAR(45);

ALTER TABLE Workers
MODIFY Cost bigint(11);