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

SET SQL_MODE = '';
DROP USER IF EXISTS weddingexpert@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'weddingexpert'@'localhost' IDENTIFIED BY 'weddingexpert';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'weddingexpert'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `venue`
-- -----------------------------------------------------
START TRANSACTION;
USE `co_rustic_wedding_venue`;
INSERT INTO `venue` (`id`, `name`, `address`, `phone_number`, `capacity`, `full_service`, `cost`, `seasonal_availability`, `handicap_accessible`, `num_of_bathrooms`) VALUES (1, 'Evergreen Red Barn', '27826 Alabraska Ln, Evergreen, CO 80439', '3036741838', 115, 0, 4500, 'All Year Round', 0, 2);
INSERT INTO `venue` (`id`, `name`, `address`, `phone_number`, `capacity`, `full_service`, `cost`, `seasonal_availability`, `handicap_accessible`, `num_of_bathrooms`) VALUES (2, 'Deer Creek Valley Ranch', '64407 US Highway 285, Bailey, CO 80421', '3039299133 ', 180, 1, 11000, 'All Year Round', 1, 2);
INSERT INTO `venue` (`id`, `name`, `address`, `phone_number`, `capacity`, `full_service`, `cost`, `seasonal_availability`, `handicap_accessible`, `num_of_bathrooms`) VALUES (3, 'The Rustic Lace Barn', '2700 Robinson St, Colorado Springs, CO 80904', '7194524327', 200, 1, 21000, 'Seasonal', 1, 4);
INSERT INTO `venue` (`id`, `name`, `address`, `phone_number`, `capacity`, `full_service`, `cost`, `seasonal_availability`, `handicap_accessible`, `num_of_bathrooms`) VALUES (4, 'Mountain View Ranch', '11883 S Elk Creek Rd. Pine, CO 80470', '8555945406', 200, 1, 25000, 'Seasonal', 1, 5);
INSERT INTO `venue` (`id`, `name`, `address`, `phone_number`, `capacity`, `full_service`, `cost`, `seasonal_availability`, `handicap_accessible`, `num_of_bathrooms`) VALUES (5, 'Church Ranch Event Center', '10200 Wadsworth Boulevard Westminster, CO 80021', '3034043777', 450, 1, 25000, 'All Year Round', 0, 4);
INSERT INTO `venue` (`id`, `name`, `address`, `phone_number`, `capacity`, `full_service`, `cost`, `seasonal_availability`, `handicap_accessible`, `num_of_bathrooms`) VALUES (6, 'Colorado Mountain Ranch', '10063 Gold Hill Road, Boulder, CO 80302', '3034424557', 200, 0, 3500, 'Seasonal', 0, 2);
INSERT INTO `venue` (`id`, `name`, `address`, `phone_number`, `capacity`, `full_service`, `cost`, `seasonal_availability`, `handicap_accessible`, `num_of_bathrooms`) VALUES (7, 'Lyons Farmette', '4121 Ute Hwy, Lyons, CO 80540', '3037466266', 125, 0, 7000, 'All Year Round', 1, 3);
INSERT INTO `venue` (`id`, `name`, `address`, `phone_number`, `capacity`, `full_service`, `cost`, `seasonal_availability`, `handicap_accessible`, `num_of_bathrooms`) VALUES (8, 'The Dunafon Castle', '24020 Highway 74, Idledale, Colorado 80453', '3039180623', 150, 0, 9400, 'Seasonal', 1, 4);
INSERT INTO `venue` (`id`, `name`, `address`, `phone_number`, `capacity`, `full_service`, `cost`, `seasonal_availability`, `handicap_accessible`, `num_of_bathrooms`) VALUES (9, 'The Pines at Genesee', '633 Park Point Dr, Golden, CO 80401', '3035267939', 275, 0, 3800, 'Seasonal', 1, 2);
INSERT INTO `venue` (`id`, `name`, `address`, `phone_number`, `capacity`, `full_service`, `cost`, `seasonal_availability`, `handicap_accessible`, `num_of_bathrooms`) VALUES (10, 'C Lazy U Ranch', '3640 Colorado Hwy 125, Granby, CO 80446', '9708873344', 90, 1, 30000, 'Seasonal', 1, 5);

COMMIT;

