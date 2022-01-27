-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP DATABASE IF EXISTS `mydb`;
CREATE SCHEMA `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`workers`
-- -----------------------------------------------------
DROP TABLE `mydb`.`workers`;
CREATE TABLE IF NOT EXISTS `mydb`.`workers` (
  `room` SMALLINT(16) UNSIGNED NOT NULL,
  `name` TINYTEXT NULL DEFAULT NULL,
  `ProfessionID` TINYINT(8) UNSIGNED NOT NULL,
  `endurance` TINYINT(8) UNSIGNED NOT NULL,
  `cost` BIGINT(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`room`),
  FOREIGN KEY (`ProfessionID`) REFERENCES professions(`ProfessionID`),
  FOREIGN KEY (`endurance`) REFERENCES endurances(`id`)
);

INSERT INTO `workers` (`room`, `name`,`ProfessionID`, `endurance`, `cost`) VALUES
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
(502, 'Derek', 23, 4, 0),
(503, 'Clifford', 11, 5, 0),
-- Floor 6
(601, 'Elsie', 32, 6, 0),
(602, 'Anthony', 31, 6, 0),
(603, 'Norman', 43, 6, 0),
-- Floor 7
(701, 'Leo', 43, 2, 0),
(702, 'Lori', 23, 2, 0),
(703, 'Mark', 24, 3, 0),
-- Floor 8
(801, 'Marilyn', 71, 6, 0),
(802, 'Danielle', 31, 5, 0),
(803, 'Calvin', 44, 3, 0),
-- Floor 9
(901, 'Raymond', 11, 5, 0),
(902, 'Herbert', 22, 3, 0),
(903, 'Danielle', 23, 3, 0),
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
(3403, 'Philip', 24, 6, 0);

CREATE TABLE `mydb`.`profession` (
  `id` INT UNSIGNED NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `type_UNIQUE` (`type` ASC) VISIBLE);

INSERT INTO `professions` (`ProfessionID`, `type`) VALUES
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

DROP TABLE `mydb`.`endurances`;
CREATE TABLE `mydb`.`endurances` (
  `id` TINYINT(8) UNSIGNED NOT NULL,
  `level` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `level_UNIQUE` (`level` ASC) VISIBLE);

INSERT INTO `endurances` (`id`, `level`) VALUES
(1, 'Lazy'),
(2, 'Sleepy'),
(3, 'Diligent'),
(4, 'Productive'),
(5, 'Hard-working'),
(6, 'Tireless');
