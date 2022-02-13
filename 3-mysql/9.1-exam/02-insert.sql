INSERT INTO `reviews` (`content`, `rating`, `picture_url`, `published_at`)
SELECT SUBSTRING(`p`.`description`, 1, 15), `p`.`price` / 8, REVERSE(`p`.`name`), '2010-10-10'
FROM `products` AS `p`
WHERE `p`.`id` >= 5;