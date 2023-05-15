-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema artgallerydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `artgallerydb` ;

-- -----------------------------------------------------
-- Schema artgallerydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `artgallerydb` DEFAULT CHARACTER SET utf8 ;
USE `artgallerydb` ;

-- -----------------------------------------------------
-- Table `art`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `art` ;

CREATE TABLE IF NOT EXISTS `art` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `artist` VARCHAR(100) NOT NULL,
  `year_made` INT NULL,
  `style` VARCHAR(45) NULL,
  `description` LONGTEXT NOT NULL,
  `price` BIGINT(200) NULL,
  `location` VARCHAR(100) NULL,
  `image` VARCHAR(20000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS artist@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'artist'@'localhost' IDENTIFIED BY 'artist';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'artist'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `art`
-- -----------------------------------------------------
START TRANSACTION;
USE `artgallerydb`;
INSERT INTO `art` (`id`, `name`, `artist`, `year_made`, `style`, `description`, `price`, `location`, `image`) VALUES (1, 'Mona Lisa', 'Leonardo da Vinci', 1503, 'Realism', 'The Mona Lisa is a likely a portrait of the wife of a Florentine merchant. For some reason however, the portrait was never delivered to its patron, and Leonardo kept it with him when he went to work for Francis I, the King of France', 1000000000, 'Louvre Museum', 'https://cdn.pariscityvision.com/library/image/5449.jpg');
INSERT INTO `art` (`id`, `name`, `artist`, `year_made`, `style`, `description`, `price`, `location`, `image`) VALUES (2, 'The Starry Night', 'Vincent van Gogh', 1889, 'Post-Impressionism', 'Van Gogh painted The Starry Night during his 12-month stay at the Saint-Paul-de-Mausole asylum near Saint-Rémy-de-Provence, France, several months after suffering a breakdown in which he severed a part of his own ear with a razor.', 100000000, 'Museum of Modern Art New York', 'https://sanctuarymentalhealth.org/wp-content/uploads/2021/03/The-Starry-Night-1200x630-1.jpg');
INSERT INTO `art` (`id`, `name`, `artist`, `year_made`, `style`, `description`, `price`, `location`, `image`) VALUES (3, 'Guernica ', 'Pablo Picasso', 1937, 'Surrealism', 'executed by Spanish artist Pablo Picasso in 1937 following the German bombing of Guernica, a city in Spain’s Basque region. The complex painting received mixed reviews when it was shown in the Spanish Republic Pavilion at the world’s fair in Paris, but it became an icon as it traveled the world in ensuing years, raising controversies on its meaning and its rightful home.', 200000000, 'Museo Reina Sofía', 'https://cdn.shopify.com/s/files/1/0849/4704/files/guernica_sartle.jpg?v=1582528493');
INSERT INTO `art` (`id`, `name`, `artist`, `year_made`, `style`, `description`, `price`, `location`, `image`) VALUES (4, 'Nighthawks', 'Edward Hopper', 1942, 'Modernism', 'Hopper claimed that the street itself wasn’t particularly lonely, but perhaps unconsciously he was conceptualizing the crushing loneliness of a large city. In any event, there is no visible diner’s entrance; the viewer is shut out from the scene, making it more intriguing.', 49750, 'School of the Art Institute of Chicago', 'https://upload.wikimedia.org/wikipedia/commons/a/a8/Nighthawks_by_Edward_Hopper_1942.jpg');
INSERT INTO `art` (`id`, `name`, `artist`, `year_made`, `style`, `description`, `price`, `location`, `image`) VALUES (5, 'The Raft of the Medusa', 'Théodore Géricault', 1818, 'Romanticism', ' The Raft of the Medusa depicts the aftermath of the 1816 wreck of the French Royal Navy frigate the Medusa, which ran aground off the coast of Senegal. Because of a shortage of lifeboats, some 150 survivors embarked on a raft and were decimated by starvation during a 13-day ordeal, which descended into murder and cannibalism.', 800000, 'Louvre Museum', 'https://upload.wikimedia.org/wikipedia/commons/1/15/JEAN_LOUIS_TH%C3%89ODORE_G%C3%89RICAULT_-_La_Balsa_de_la_Medusa_%28Museo_del_Louvre%2C_1818-19%29.jpg');

COMMIT;

