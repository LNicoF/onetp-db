CREATE TABLE IF NOT EXISTS `relatives` (
    `id` varchar(36) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `person_relative` (
    `person_id` varchar(36) NOT NULL,
    `relative_id` varchar(36) NOT NULL,
    FOREIGN KEY (`person_id`) REFERENCES people(`id`),
    FOREIGN KEY (`relative_id`) REFERENCES relatives(`id`),
    PRIMARY KEY (`person_id`, `relative_id`)
);

CREATE TABLE IF NOT EXISTS `patient_relative` (
    `patient_id` varchar(36) NOT NULL,
    `relative_id` varchar(36) NOT NULL,
    FOREIGN KEY (`patient_id`) REFERENCES patients(`id`),
    FOREIGN KEY (`relative_id`) REFERENCES relatives(`id`),
    PRIMARY KEY (`patient_id`, `relative_id`)
);