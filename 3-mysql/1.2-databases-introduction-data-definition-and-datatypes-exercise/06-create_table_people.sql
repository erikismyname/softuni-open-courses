CREATE TABLE `people`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(200) NOT NULL,
`picture` BLOB,
`height` DOUBLE,
`weight` DOUBLE,
`gender` CHAR(1) NOT NULL,
`birthdate` DATE NOT NULL,
`biography` TEXT 
);

INSERT INTO `people`(`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`)
VALUES ('1', 'Test', NULL, NULL, NULL, 'm', '2000-04-25', NULL),
('2', 'Test', NULL, NULL, NULL, 'm', '2000-04-25', NULL),
('3', 'Test', NULL, NULL, NULL, 'm', '2000-04-25', NULL),
('4', 'Test', NULL, NULL, NULL, 'm', '2000-04-25', NULL),
('5', 'Test', NULL, NULL, NULL, 'm', '2000-04-25', NULL);