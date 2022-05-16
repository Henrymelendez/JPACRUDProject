-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema transactions
-- -----------------------------------------------------
-- 	
DROP SCHEMA IF EXISTS `transactions` ;

-- -----------------------------------------------------
-- Schema transactions
--
-- 	
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `transactions` DEFAULT CHARACTER SET utf8 ;
USE `transactions` ;

-- -----------------------------------------------------
-- Table `transactions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `transactions` ;

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `item_no` INT NOT NULL,
  `description` VARCHAR(250) NOT NULL,
  `quantity` INT NULL,
  `unit_price` DOUBLE NULL DEFAULT 4.99,
  `std_cost` DOUBLE NULL,
  `cost_goods_sold` DOUBLE NULL,
  `revenue` DOUBLE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS user@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'user'@'localhost' IDENTIFIED BY 'user';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'user'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `transactions`
-- -----------------------------------------------------
START TRANSACTION;
USE `transactions`;
INSERT INTO `transactions` (`id`, `item_no`, `description`, `quantity`, `unit_price`, `std_cost`, `cost_goods_sold`, `revenue`) VALUES (1, 30239, 'Avocado Oil 500 mL (GS1) x 12-Pack Printed Box', 145920, 5.98 , 4.100 , 598272.00 , 872784);
INSERT INTO `transactions` (`id`, `item_no`, `description`, `quantity`, `unit_price`, `std_cost`, `cost_goods_sold`, `revenue`) VALUES (2, 30309, 'Trader Joes Organic Toasted Sesame Oil 148 ml', 97440, 1.81 , 1.40,  136416.00 , 176332.80);
INSERT INTO `transactions` (`id`, `item_no`, `description`, `quantity`, `unit_price`, `std_cost`, `cost_goods_sold`, `revenue`) VALUES (3, 30004, 'Avocado Oil Mayo 24 oz x 12-pack tray', 131328, 5.94 , 4.55, 597489.87, 779904);
INSERT INTO `transactions` (`id`, `item_no`, `description`, `quantity`, `unit_price`, `std_cost`, `cost_goods_sold`, `revenue`) VALUES (4, 30031, 'Avocado Oil Bonus Spray 6 oz x 6-Pack Box', 12180, 7.40 , 2.10, 25578, 90090.91);
INSERT INTO `transactions` (`id`, `item_no`, `description`, `quantity`, `unit_price`, `std_cost`, `cost_goods_sold`, `revenue`) VALUES (5, 30071, 'Lemon Garlic Dressing 12 oz x 6-pack case', 446, 12.79 , 2.69, 5066.26, 7950.60);
INSERT INTO `transactions` (`id`, `item_no`, `description`, `quantity`, `unit_price`, `std_cost`, `cost_goods_sold`, `revenue`) VALUES (6, 30251, 'Avocado Oil 2 Lt x 8-Pack Printed Tray', 2918, 35.62 , 13.20, 38517.60 ,  103943.62 );
INSERT INTO `transactions` (`id`, `item_no`, `description`, `quantity`, `unit_price`, `std_cost`, `cost_goods_sold`, `revenue`) VALUES (7, 1000, 'Water', 13	, 769.23, 76.92, 1000.00, 10000.00);
INSERT INTO `transactions` (`id`, `item_no`, `description`, `quantity`, `unit_price`, `std_cost`, `cost_goods_sold`, `revenue`) VALUES (8, 1000, 'Water', 10, 150.00, 10.00, 100.00, 1500.00);
INSERT INTO `transactions` (`id`, `item_no`, `description`, `quantity`, `unit_price`, `std_cost`, `cost_goods_sold`, `revenue`) VALUES (DEFAULT, 1000, 'Water', 100	, 15.00, 10.00, 1000.00, 1500.00);

COMMIT;

