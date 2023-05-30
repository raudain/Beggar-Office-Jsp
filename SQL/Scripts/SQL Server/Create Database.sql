CREATE DATABASE VirtualBeggar;

USE VirtualBeggar;
-- GO


CREATE SCHEMA hr;
-- GO 


-- -----------------------------------------------------
-- Table hr.professions
-- -----------------------------------------------------
DROP TABLE IF EXISTS hr.worker;
DROP TABLE IF EXISTS hr.profession;

CREATE TABLE hr.profession (
  id INT NOT NULL,
  type VARCHAR(19) NOT NULL,
  PRIMARY KEY (id)
 );

INSERT INTO hr.profession (
	id,
	type
)
VALUES
	(11, 'Construction Worker'),
	(12, 'Postman'),
	(13, 'Gardener'),
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
DROP TABLE IF EXISTS hr.endurance;

CREATE TABLE hr.endurance (
  id INT NOT NULL,
  level VARCHAR(12) NOT NULL,
  PRIMARY KEY (id)
 );

INSERT INTO hr.endurance (
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
CREATE TABLE hr.worker (
  room SMALLINT NOT NULL,
  name VARCHAR(9) NOT NULL,
  profession_id INT NOT NULL,
  endurance_id INT NOT NULL,
  cost BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (room),
  FOREIGN KEY (profession_id) REFERENCES hr.professions(id),
  FOREIGN KEY (endurance_id) REFERENCES hr.endurances(id)
);

INSERT INTO hr.worker (
	room,
	name, 
	profession_id,
	endurance_id
)
VALUES
	-- Floor 1
	(101, 'Terry', 71, 6),
	(102, 'Timothy', 71, 6),
	(103, 'Nicholas', 71, 6),
	-- Floor 2
	(201, 'Darlene', 71, 6),
	(202, 'April', 71, 6),
	(203, 'Martha', 32, 6),
	-- Floor 3
	(301, 'Beverley', 42, 4),
	(302, 'Edward', 41, 3),
	(303, 'Thelma', 51, 6),
	-- Floor 4
	(401, 'Bernard', 43, 4),
	(402, 'Diana', 41, 6),
	(403, 'Jorge', 61, 3),
	-- Floor 5
	(501, 'Anne', 24, 5),
	(502, 'Roger', 41, 5),
	(503, 'Clifford', 11, 5),
	-- Floor 6
	(601, 'Elsie', 32, 6),
	(602, 'Anthony', 31, 6),
	(603, 'Norman', 43, 6),
	-- Floor 7
	(701, 'Carrie', 51, 3),
	(702, 'Debra', 61, 4),
	(703, 'Marcus', 61, 5),
	-- Floor 8
	(801, 'Marilyn', 71, 6),
	(802, 'Danielle', 31, 5),
	(803, 'Judith', 61, 3),
	-- Floor 9
	(901, 'Raymond', 11, 5),
	(902, 'Bonnie', 61, 5),
	(903, 'Mary', 44, 6),
	-- Floor 10
	(1001, 'Erin', 31, 5),
	(1002, 'Jack', 61, 5),
	(1003, 'Regina', 61, 5),
	-- Floor 11
	(1101, 'Thomas', 52, 3),
	(1102, 'Vivian', 44, 5),
	(1103, 'Lauren', 41, 6),
	-- Floor 12
	(1201, 'Carmen', 52, 4),
	(1202, 'Vivian', 52, 4),
	(1203, 'Craig', 51, 4),
	-- Floor 13
	(1301, 'Janice', 52, 4),
	(1302, 'Andrew', 71, 6),
	(1303, 'Karen', 52, 6),
	-- Floor 14
	(1401, 'Travis', 41, 3),
	(1402, 'Vanessa', 52, 4),
	(1403, 'Marion', 51, 2),
	-- Floor 15
	(1501, 'Dawn', 42, 5),
	(1502, 'Rhonda', 42, 6),
	(1503, 'Kenneth', 41, 6),
	-- Floor 16
	(1601, 'Eugene', 51, 3),
	(1602, 'Sally', 51, 6),
	(1603, 'Marcus', 61, 3),
	-- Floor 17
	(1701, 'Melvin', 61, 4),
	(1702, 'Leon', 71, 6),
	(1703, 'Diane', 51, 4),
	-- Floor 18
	(1801, 'Adam', 51, 3),
	(1802, 'Jerry', 44, 5),
	(1803, 'Dustin', 61, 5),
	-- Floor 19
	(1901, 'Howard', 71, 6),
	(1902, 'Carlos', 42, 6),
	(1903, 'Jay', 42, 6),
	-- Row 20
	(2001, 'Phyllis', 51, 5),
	(2002, 'Carolyn', 52, 5),
	(2003, 'Walter', 43, 5),
	-- Floor 21
	(2101, 'Joanne', 61, 5),
	(2102, 'Roy', 61, 3),
	(2103, 'Ricardo', 51, 3),
	-- Floor 22
	(2201, 'Raymond', 43, 6),
	(2202, 'Carl', 44, 5),
	(2203, 'Craig', 12, 5),
	-- Floor 23
	(2301, 'Eva', 52, 6),
	(2302, 'Kenneth', 51, 5),
	(2303, 'Rita', 44, 5),
	-- Floor 24
	(2401, 'Florence', 52, 3),
	(2402, 'Rita', 52, 1),
	(2403, 'Brandon', 51, 4),
	-- Floor 25
	(2501, 'Julia', 61, 6),
	(2502, 'Anita', 51, 4),
	(2503, 'Anne', 44, 5),
	-- Floor 26
	(2601, 'Chad', 32, 5),
	(2602, 'Marilyn', 51, 2),
	(2603, 'Clarence', 52, 6),
	-- Floor 27
	(2701, 'Lori', 61, 3),
	(2702, 'Nicholas', 41, 6),
	(2703, 'Steve', 51, 4),
	-- Floor 28
	(2801, 'Justin', 61, 4),
	(2802, 'Jason', 52, 5),
	(2803, 'Fransisco', 43, 5),
	-- Floor 29
	(2901, 'Zachary', 51, 3),
	(2902, 'Shane', 51, 2),
	(2903, 'Christina', 22, 5),
	-- Floor 30
	(3001, 'Kathy', 51, 6),
	(3002, 'Sara', 61, 3),
	(3003, 'Hector', 51, 4),
	-- Floor 31
	(3101, 'Jean', 52, 6),
	(3102, 'Eugene', 51, 4),
	(3103, 'Dean', 31, 4),
	-- Floor 32
	(3201, 'Bernard', 61, 5),
	(3202, 'Anna', 51, 5),
	(3203, 'Howard', 52, 5),
	-- Floor 33
	(3301, 'Suzanne', 61, 3),
	(3302, 'Randall', 52, 5),
	(3303, 'Howard', 41, 4),
	-- Floor 34
	(3401, 'Charlotte', 61, 6),
	(3402, 'Wesley', 52, 5),
	(3403, 'Philip', 24, 6),
	-- Floor 35
	(3501, 'Irene', 51, 3),
	(3502, 'Alice', 44, 4),
	(3503, 'Chirstina', 31, 5),
	-- Floor 36
	(3601, 'Hector', 52, 6),
	(3602, 'Esther', 44, 6),
	(3603, 'Douglas', 61, 4),
	-- Floor 37
	(3701, 'Sally', 52, 4),
	(3702, 'Irene', 41, 6),
	(3703, 'Sharon', 52, 3),
	-- Floor 38
	(3801, 'Hector', 51, 5),
	(3802, 'Norman', 43, 5),
	(3803, 'Vincent', 41, 4),
	-- Floor 39
	(3901, 'Darrel', 41, 6),
	(3902, 'Judith', 51, 5),
	(3903, 'Joshua', 51, 4),
	-- Floor 40
	(4001, 'Francis', 51, 6),
	(4002, 'Thomas', 52, 5),
	(4003, 'Leonard', 51, 4),
	-- Floor 41
	(4101, 'Travis', 71, 6),
	(4102, 'Edward', 51, 5),
	(4103, 'Ida', 32, 6),
	-- Floor 42
	(4201, 'Travis', 51, 4),
	(4202, 'Rita', 52, 4),
	(4203, 'Lee', 31, 5),
	-- Floor 43
	(4301, 'Barry', 71, 6),
	(4302, 'Nicholas', 51, 5),
	(4303, 'Clarence', 61, 4),
	-- Floor 44
	(4401, 'Lauren', 44, 6),
	(4402, 'Irene', 71, 6),
	(4403, 'Johnny', 52, 4);
