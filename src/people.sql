CREATE TABLE IF NOT EXISTS `people` (
  `id` varchar(36) NOT NULL,  
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `DNI` INT(11) NOT NULL,
  `birt_date` TIMESTAMP NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
);