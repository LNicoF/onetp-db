CREATE TABLE IF NOT EXISTS `medics` (
    `id` varchar(36) NOT NULL, 
    `matriculation_number` INT NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `person_medic` (
    `person_id` varchar(36),
    `medic_id` varchar(36),
    FOREIGN KEY (`person_id`) REFERENCES persons(`id`),
    FOREIGN KEY (`medic_id`) REFERENCES medics(`id`),
    PRIMARY KEY (`person_id`, `medic_id`)
);

CREATE TABLE IF NOT EXISTS `medic_teams` (
    `id` varchar(36), 
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `medic_medic_team` (
    `medic_id` varchar(36),
    `medic_team_id` varchar(36),
    FOREIGN KEY (`medic_id`) REFERENCES medics(`id`),
    FOREIGN KEY (`medic_team_id`) REFERENCES medic_teams(`id`),
    PRIMARY KEY (`medic_id`, `medic_team_id`)
);