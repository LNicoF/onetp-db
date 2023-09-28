CREATE TABLE IF NOT EXISTS `account` (
  `id` varchar(36) NOT NULL,  
  `email` varchar(255) NOT NULL UNIQUE,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
)