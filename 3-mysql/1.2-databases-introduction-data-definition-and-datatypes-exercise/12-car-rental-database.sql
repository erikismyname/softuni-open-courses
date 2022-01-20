CREATE DATABASE `car_rental`;
USE `car_rental`;

CREATE TABLE `categories`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`category` VARCHAR(15) NOT NULL,
`daily_rate` DOUBLE,
`weekly_rate` DOUBLE,
`monthly_rate` DOUBLE,
`weekend_rate` DOUBLE
);

INSERT INTO `categories`(`id`, `category`, `daily_rate`, `weekly_rate`, `monthly_rate`, `weekend_rate`)
VALUES ('1', 'test', NULL, NULL, NULL, NULL),
('2', 'test', NULL, NULL, NULL, NULL),
('3', 'test', NULL, NULL, NULL, NULL);

CREATE TABLE `cars`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`plate_number` VARCHAR(10),
`make` VARCHAR(10) NOT NULL,
`model` VARCHAR(30) NOT NULL,
`car_year` YEAR,
`category_id` INT,
`doors` INT,
`picture` BLOB,
`car_condition` TEXT,
`available` BOOLEAN
);

INSERT INTO `cars`(`id`, `plate_number`, `make`, `model`, `car_year`, `category_id`, `doors`, `picture`, `car_condition`, `available`)
VALUES ('1', NULL, 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL),
('2', NULL, 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL),
('3', NULL, 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL);

CREATE TABLE `employees`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`first_name` VARCHAR(15) NOT NULL,
`last_name` VARCHAR(15) NOT NULL,
`title` VARCHAR(10),
`notes` TEXT
);

INSERT INTO `employees`(`id`, `first_name`, `last_name`, `title`, `notes`)
VALUES ('1', 'Test', 'Test', NULL, NULL),
('2', 'Test', 'Test', NULL, NULL),
('3', 'Test', 'Test', NULL, NULL);

CREATE TABLE `customers`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`driver_licence_number` VARCHAR(20) NOT NULL,
`full_name` VARCHAR(50) NOT NULL,
`address` VARCHAR(50),
`city` VARCHAR(20),
`zip_code` INT,
`notes` TEXT
);

INSERT INTO `customers`(`id`, `driver_licence_number`, `full_name`, `address`, `city`, `zip_code`, `notes`)
VALUES ('1', 'test', 'Test Testov', NULL, NULL, NULL, NULL),
('2', 'test', 'Test Testov', NULL, NULL, NULL, NULL),
('3', 'test', 'Test Testov', NULL, NULL, NULL, NULL);

CREATE TABLE `rental_orders` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `employee_id` INT,
    `customer_id` INT,
    `car_id` INT,
    `car_condition` TEXT,
    `tank_level` INT,
    `kilometrage_start` INT,
    `kilometrage_end` INT,
    `total_kilometrage` INT,
    `start_date` DATETIME,
    `end_date` DATETIME,
    `total_days` INT,
    `rate_applied` DOUBLE,
    `tax_rate` DOUBLE,
    `order_status` VARCHAR(10) NOT NULL,
    `notes` TEXT
);

INSERT INTO `rental_orders`(`id`, `employee_id`, `customer_id`, `car_id`, `car_condition`, `tank_level`, `kilometrage_start`, `kilometrage_end`, `total_kilometrage`, `start_date`, `end_date`, `total_days`, `rate_applied`, `tax_rate`, `order_status`, `notes`)
VALUES ('1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL),
('2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL),
('3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL);