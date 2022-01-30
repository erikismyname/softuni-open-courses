CREATE TABLE `people` (
`person_id` INT AUTO_INCREMENT UNIQUE,
`first_name` VARCHAR(20) NOT NULL,
`salary` DECIMAL(7, 2) NOT NULL,
`passport_id` INT NOT NULL UNIQUE
);

CREATE TABLE `passports` (
`passport_id` INT AUTO_INCREMENT UNIQUE,
`passport_number` VARCHAR(8) NOT NULL UNIQUE
) AUTO_INCREMENT = 101;

INSERT INTO `people` (`first_name`, `salary`, `passport_id`)
VALUES ('Roberto', 43300, 102),
('Tom', 56100, 103),
('Yana', 60200, 101);

INSERT INTO `passports` (`passport_number`)
VALUES ('N34FG21B'),
('K65LO4R7'),
('ZE657QP2');

ALTER TABLE `people`
ADD PRIMARY KEY (`person_id`),
ADD CONSTRAINT `fk_people_passports`
FOREIGN KEY (`passport_id`)
REFERENCES `passports`(`passport_id`);