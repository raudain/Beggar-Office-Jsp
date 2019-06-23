ALTER TABLE workers
DROP COLUMN cost;

ALTER TABLE workers
ADD cost int(11);

ALTER TABLE Workers
CHANGE cost Cost
INT(11);

ALTER TABLE Workers
MODIFY Cost bigint(11);