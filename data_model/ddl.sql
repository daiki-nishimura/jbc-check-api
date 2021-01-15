DROP TABLE IF EXISTS `accidents`;
DROP TABLE IF EXISTS `bathings`;
DROP TABLE IF EXISTS `excretions`;
DROP TABLE IF EXISTS `meals`;
DROP TABLE IF EXISTS `sleeps`;
DROP TABLE IF EXISTS `vitalsigns`;
DROP TABLE IF EXISTS `residents`;

CREATE TABLE `residents` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `meals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `residents_id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_residents_meals_id` FOREIGN KEY (`residents_id`) REFERENCES `residents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `accidents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `residents_id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_residents_accidents_id` FOREIGN KEY (`residents_id`) REFERENCES `residents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `bathing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `residents_id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_residents_bathing_id` FOREIGN KEY (`residents_id`) REFERENCES `residents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `excretions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `residents_id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_residents_excretions_id` FOREIGN KEY (`residents_id`) REFERENCES `residents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `sleeps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `residents_id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_residents_sleeps_id` FOREIGN KEY (`residents_id`) REFERENCES `residents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `vitalsigns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `residents_id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_residents_vitalsigns_id` FOREIGN KEY (`residents_id`) REFERENCES `residents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
