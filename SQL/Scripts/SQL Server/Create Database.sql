--CREATE DATABASE VirtualBeggar;

USE VirtualBeggar;
GO


/* CREATE SCHEMA hr;
GO */ 


-- -----------------------------------------------------
-- Table hr.professions
-- -----------------------------------------------------
DROP TABLE IF EXISTS hr.workers;
DROP TABLE IF EXISTS hr.professions;

CREATE TABLE hr.professions (
  id INT NOT NULL,
  type VARCHAR(19) NOT NULL,
  PRIMARY KEY (id)
 );

INSERT INTO hr.professions (
	id,
	type
)
VALUES
	(11, 'Construction Worker'),
	(12, 'Postman'),
	(21, 'Artist'),
	(22, 'Cook'),
	(23, 'Magician'),
	(24, 'Firefighter'),
	(31, 'Scientist'),
	(32, 'Journalist'),
	(41, 'Doctor'),
	(42, 'Computer Engineer'),
	(43, 'Santa'),
	(44, 'Lawyer'),
	(51, 'Politician'),
	(52, 'Pilot'),
	(61, 'Mad Scientist'),
	(71, 'Businessman');


-- -----------------------------------------------------
-- Table hr.endurances
-- -----------------------------------------------------
DROP TABLE IF EXISTS hr.endurances;

CREATE TABLE hr.endurances (
  id INT NOT NULL,
  level VARCHAR(12) NOT NULL,
  PRIMARY KEY (id)
 );

INSERT INTO hr.endurances (
	id,
	level
)
VALUES
	(1, 'Lazy'),
	(2, 'Sleepy'),
	(3, 'Diligent'),
	(4, 'Productive'),
	(5, 'Hard-working'),
	(6, 'Tireless');


-- -----------------------------------------------------
-- Table hr.workers
-- -----------------------------------------------------
CREATE TABLE VirtualBeggar.hr.workers (
  room SMALLINT NOT NULL,
  name VARCHAR(9) NOT NULL,
  profession_id INT NOT NULL,
  endurance_id INT NOT NULL,
  cost BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (room),
  FOREIGN KEY (profession_id) REFERENCES hr.professions(id),
  FOREIGN KEY (endurance_id) REFERENCES hr.endurances(id)
);

INSERT INTO VirtualBeggar.hr.workers (
	room,
	name, 
	profession_id,
	endurance_id,
	cost
)
VALUES
	-- Floor 1
	(101, 'Terry', 71, 6, 0),
	(102, 'Timothy', 71, 6, 0),
	(103, 'Nicholas', 71, 6, 0),
	-- Floor 2
	(201, 'Darlene', 71, 6, 0),
	(202, 'April', 71, 6, 0),
	(203, 'Martha', 32, 6, 0),
	-- Floor 3
	(301, 'Beverley', 42, 4, 0),
	(302, 'Edward', 41, 3, 0),
	(303, 'Emily', 32, 4, 0),
	-- Floor 4
	(401, 'Bernard', 43, 4, 0),
	(402, 'Charlie', 43, 2, 0),
	(403, 'Derek', 43, 2, 0),
	-- Floor 5
	(501, 'Anne', 24, 5, 0),
	(502, 'Roger', 41, 5, 40000000),
	(503, 'Clifford', 11, 5, 0),
	-- Floor 6
	(601, 'Elsie', 32, 6, 0),
	(602, 'Anthony', 31, 6, 0),
	(603, 'Norman', 43, 6, 0),
	-- Floor 7
	(701, 'Leo', 43, 2, 0),
	(702, 'Debra', 61, 4, 400000000),
	(703, 'Mark', 24, 3, 0),
	-- Floor 8
	(801, 'Marilyn', 71, 6, 0),
	(802, 'Danielle', 31, 5, 0),
	(803, 'Calvin', 44, 3, 0),
	-- Floor 9
	(901, 'Raymond', 11, 5, 0),
	(902, 'Herbert', 22, 3, 0),
	(903, 'Mary', 44, 6, 520000000),
	-- Floor 10
	(1001, 'Erin', 31, 5, 0),
	(1002, 'Travis', 41, 3, 0),
	(1003, 'Sue', 31, 4, 0),
	-- Floor 11
	(1101, 'Pat', 43, 2, 0),
	(1102, 'Shannon', 22, 4, 0),
	(1103, 'Lauren', 41, 6, 0),
	-- Floor 12
	(1201, 'Carmen', 52, 4, 0),
	(1202, 'Leo', 31, 4, 0),
	(1203, 'Alan', 43, 1, 0),
	-- Floor 13
	(1301, 'Gene', 21, 3, 0),
	(1302, 'Andrew', 71, 6, 0),
	(1303, 'Karen', 52, 6, 0),
	-- Floor 14
	(1401, 'Travis', 41, 3, 0),
	(1402, 'Victor', 44, 3, 0),
	(1403, 'Marion', 51, 2, 0),
	-- Floor 15
	(1501, 'Samuel', 31, 3, 0),
	(1502, 'Rhonda', 42, 6, 0),
	(1503, 'Kenneth', 41, 6, 0),
	-- Floor 16
	(1601, 'Nathan', 44, 3, 0),
	(1602, 'Sally', 51, 6, 0),
	(1603, 'Marcus', 61, 3, 0),
	-- Floor 17
	(1701, 'Melvin', 61, 4, 0),
	(1702, 'Leon', 71, 6, 0),
	(1703, 'Diane', 51, 4, 0),
	-- Floor 18
	(1801, 'Adam', 51, 3, 0),
	(1802, 'Jerry', 44, 5, 0),
	(1803, 'Carlos', 43, 2, 0),
	-- Floor 19
	(1901, 'Todd', 11, 4, 0),
	(1902, 'Carlos', 42, 6, 0),
	(1903, 'Jay', 42, 6, 0),
	-- Row 20
	(2001, 'Phyllis', 51, 5, 0),
	(2002, 'Carolyn', 52, 5, 0),
	(2003, 'Walter', 43, 5, 0),
	-- Floor 21
	(2101, 'Joanne', 61, 5, 0),
	(2102, 'Roy', 61, 3, 0),
	(2103, 'Ricardo', 51, 3, 0),
	-- Floor 22
	(2201, 'Raymond', 43, 6, 0),
	(2202, 'Carl', 44, 5, 0),
	(2203, 'Craig', 12, 5, 0),
	-- Floor 23
	(2301, 'Eva', 52, 6, 0),
	(2302, 'Kenneth', 51, 5, 0),
	(2303, 'Rita', 44, 5, 0),
	-- Floor 24
	(2401, 'Florence', 52, 3, 0),
	(2402, 'Rita', 52, 1, 0),
	(2403, 'Jennifer', 24, 3, 0),
	-- Floor 25
	(2501, 'Julia', 61, 6, 0),
	(2502, 'Anita', 51, 4, 0),
	(2503, 'Anne', 44, 5, 0),
	-- Floor 26
	(2601, 'Chad', 32, 5, 0),
	(2602, 'Marilyn', 51, 2, 0),
	(2603, 'Tiffany', 31, 3, 0),
	-- Floor 27
	(2701, 'Lori', 61, 3, 0),
	(2702, 'Nicholas', 41, 6, 0),
	(2703, 'Steve', 51, 4, 0),
	-- Floor 28
	(2801, 'Justin', 61, 4, 0),
	(2802, 'Jason', 52, 5, 0),
	(2803, 'Fransisco', 43, 5, 0),
	-- Floor 29
	(2901, 'Zachary', 51, 3, 0),
	(2902, 'Shane', 51, 2, 0),
	(2903, 'Christina', 22, 5, 0),
	-- Floor 30
	(3001, 'Kathy', 51, 6, 0),
	(3002, 'Sara', 61, 3, 0),
	(3003, 'Hector', 51, 4, 0),
	-- Floor 31
	(3101, 'Jean', 52, 6, 0),
	(3102, 'Eugene', 51, 4, 0),
	(3103, 'Dean', 31, 4, 0),
	-- Floor 32
	(3201, 'Bernard', 61, 5, 0),
	(3202, 'Anna', 51, 5, 0),
	(3203, 'Howard', 52, 5, 0),
	-- Floor 33
	(3301, 'Suzanne', 61, 3, 0),
	(3302, 'Randall', 52, 5, 0),
	(3303, 'Howard', 41, 4, 0),
	-- Floor 34
	(3401, 'Rhonda', 44, 3, 0),
	(3402, 'Brent', 32, 2, 0),
	(3403, 'Philip', 24, 6, 0),
	-- Floor 35
	(3501, 'Irene', 51, 3, 0),
	(3502, 'Alice', 44, 4, 0),
	(3503, 'Chirstina', 31, 5, 0),
	-- Floor 36
	(3601, 'Hector', 52, 6, 0),
	(3602, 'Esther', 44, 6, 0),
	(3603, 'Douglas',61, 4, 0),
	-- Floor 37
	(3701, 'Sally', 52, 4, 0),
	(3702, 'Irene', 41, 6, 0),
	(3703, 'Sharon', 52, 3, 0),
	-- Floor 38
	(3801, 'Hector', 51, 5, 0),
	(3802, 'Norman', 43, 5, 0),
	(3803, 'Vincent', 41, 4, 0),
	-- Floor 39
	(3901, 'Darrel', 41, 6, 0),
	(3902, 'Judith', 51, 5, 0),
	(3903, 'Joshua', 51, 4, 0),
	-- Floor 40
	(4001, 'Francis', 51, 6, 0),
	(4002, 'Thomas', 52, 5, 0),
	(4003, 'Leonard', 51, 4, 0),
	-- Floor 41
	(4101, 'Travis', 71, 6, 0),
	(4102, 'Edward', 51, 5, 0),
	(4103, 'Ida', 32, 6, 0),
	-- Floor 42
	(4201, 'Travis', 51, 4, 0),
	(4202, 'Rita', 52, 4, 0),
	(4203, 'Lee', 31, 5, 0),
	-- Floor 43
	(4301, 'Barry', 71, 6, 0),
	(4302, 'Nicholas', 51, 5, 0),
	(4303, 'Clarence', 61, 4, 0),
	-- Floor 44
	(4401, 'Lauren', 44, 6, 0),
	(4402, 'Irene', 71, 6, 0),
	(4403, 'Johnny', 52, 4, 0);
