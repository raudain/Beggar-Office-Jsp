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
MODIFY room smallint(4);


/*
	name
*/
ALTER TABLE employees
MODIFY name tinytext;


/*
	profession
*/
ALTER TABLE employees
MODIFY profession tinytext;


/*
	endurance
*/
ALTER TABLE employees
MODIFY endurance tinytext;


/*
	level
*/
ALTER TABLE employees
MODIFY endurance bit(5);