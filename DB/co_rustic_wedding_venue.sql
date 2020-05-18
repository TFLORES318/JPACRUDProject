-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema co_rustic_wedding_venue
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `co_rustic_wedding_venue` ;

-- -----------------------------------------------------
-- Schema co_rustic_wedding_venue
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `co_rustic_wedding_venue` DEFAULT CHARACTER SET utf8 ;
USE `co_rustic_wedding_venue` ;

-- -----------------------------------------------------
-- Table `venue`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `venue` ;

CREATE TABLE IF NOT EXISTS `venue` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(1000) NOT NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `capacity` INT NOT NULL,
  `full_service` TINYINT NULL,
  `cost` INT NULL,
  `seasonal_availability` VARCHAR(100) NULL,
  `handicap_accessible` TINYINT NOT NULL,
  `num_of_bathrooms` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `category` ;

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`category_id`));

SET SQL_MODE = '';
DROP USER IF EXISTS weddingexpert@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'weddingexpert'@'localhost' IDENTIFIED BY 'weddingexpert';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'weddingexpert'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
