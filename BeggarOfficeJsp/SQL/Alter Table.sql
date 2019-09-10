ALTER TABLE workers
DROP COLUMN cost;

ALTER TABLE workers
ADD cost int(11);

ALTER TABLE employees
CHANGE Endurance endurance
text;

ALTER TABLE employees
MODIFY Level bit(5);

/*
	room
*/
ALTER TABLE employees
MODIFY Room smallint(4);

ALTER TABLE employees
CHANGE Room room
text;

/*
	name
*/
ALTER TABLE employees
MODIFY Name smallint(4);

ALTER TABLE employees
CHANGE Name name
text;