-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: Resume
-- Source Schemata: portfolio
-- Created: Thu Jun 20 07:34:38 2019
-- Workbench Version: 8.0.15
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema Resume
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `Resume` ;
CREATE SCHEMA IF NOT EXISTS `Resume` ;

-- ----------------------------------------------------------------------------
-- Table Resume.workers
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Resume`.`workers` (
  `position` INT(11) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `profession` VARCHAR(45) NOT NULL,
  `endurance` VARCHAR(45) NOT NULL,
  `level` INT(11) NOT NULL,
  `cost` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`position`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
SET FOREIGN_KEY_CHECKS = 1;
