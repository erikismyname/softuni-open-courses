CREATE DATABASE `movies`;
USE `movies`;

CREATE TABLE `directors`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`director_name` VARCHAR(30) NOT NULL,
`notes` VARCHAR(100)
);

INSERT INTO `directors`(`id`, `director_name`, `notes`)
VALUES ('1', 'Test', NULL),
('2', 'Test', NULL),
('3', 'Test', NULL),
('4', 'Test', NULL),
('5', 'Test', NULL);

CREATE TABLE `genres`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`genre_name` VARCHAR(10) NOT NULL,
`notes` VARCHAR(100)
);

INSERT INTO `genres`(`id`, `genre_name`, `notes`)
VALUES ('1', 'Test', NULL),
('2', 'Test', NULL),
('3', 'Test', NULL),
('4', 'Test', NULL),
('5', 'Test', NULL);

CREATE TABLE `categories`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`category_name` VARCHAR(10) NOT NULL,
`notes` VARCHAR(100)
);

INSERT INTO `categories`(`id`, `category_name`, `notes`)
VALUES ('1', 'Test', NULL),
('2', 'Test', NULL),
('3', 'Test', NULL),
('4', 'Test', NULL),
('5', 'Test', NULL);

CREATE TABLE `movies`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`title` VARCHAR(30) NOT NULL,
`director_id` INT,
`copyright_year` INT,
`length` INT,
`genre_id` INT,
`category_id` INT,
`rating` DOUBLE,
`notes` VARCHAR(100)
);

INSERT INTO `movies`(`id`, `title`, `director_id`, `copyright_year`, `length`, `genre_id`, `category_id`, `rating`, `notes`)
VALUES ('1', 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2', 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL), 
('3', 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL), 
('4', 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL), 
('5', 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL); 