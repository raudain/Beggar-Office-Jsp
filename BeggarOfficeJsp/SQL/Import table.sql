-- ----------------------------------------------------------------------------
-- Table portfolio.workers
-- ----------------------------------------------------------------------------
DROP TABLE workers;
CREATE TABLE IF NOT EXISTS `portfolio`.`workers` (
  `Position` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Profession` VARCHAR(45) NOT NULL,
  `Endurance` VARCHAR(45) NOT NULL,
  `Level` INT(11) NOT NULL,
  `Cost` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`position`));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Records.csv' 
INTO TABLE workers 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
/*IGNORE 1 ROWS*/

/*SHOW VARIABLES LIKE "secure_file_priv";*/