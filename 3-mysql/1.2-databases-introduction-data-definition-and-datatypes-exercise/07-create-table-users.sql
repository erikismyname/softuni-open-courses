CREATE TABLE `users`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`username` VARCHAR(30) NOT NULL,
`password` VARCHAR(26) NOT NULL,
`profile_picture` BLOB,
`last_login_time` DATETIME,
 `is_deleted` BOOLEAN
);

INSERT INTO `users`(`id`, `username`, `password`, `profile_picture`, `last_login_time`, `is_deleted`)
VALUES ('1', 'test', 'test', NULL, NULL, false),
('2', 'test', 'test', NULL, NULL, false),
('3', 'test', 'test', NULL, NULL, false),
('4', 'test', 'test', NULL, NULL, false),
('5', 'test', 'test', NULL, NULL, false);