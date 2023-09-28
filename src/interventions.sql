CREATE TABLE IF NOT EXISTS `interventions` (
  `id` varchar(36) NOT NULL,  
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `started` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `ended` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `intervention_types` (
    `id` varchar(36) NOT NULL,
    PRIMARY KEY (`id`)
); 