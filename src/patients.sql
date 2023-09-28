CREATE TABLE IF NOT EXISTS `patients` (
    `id` varchar(36) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `person_patient` (
    `person_id` varchar(36) NOT NULL,
    `patient_id` varchar(36) NOT NULL,
    FOREIGN KEY (`person_id`) REFERENCES people(`id`),
    FOREIGN KEY (`patient_id`) REFERENCES patients(`id`),
    PRIMARY KEY (`patient_id`, `person_id`)
);