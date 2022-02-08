SELECT `p`.`id`, CONCAT(`first_name`, ' ', `last_name`) AS 'full_name', `age`, `position`, `hire_date`
FROM `players` AS `p`
JOIN `skills_data` AS `s_d` ON `p`.`skills_data_id` = `s_d`.`id`
WHERE `age` < 23 AND `position` = 'A' AND `hire_date` IS NULL AND `strength` > 50
ORDER BY `salary`, `age`;