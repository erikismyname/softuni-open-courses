SELECT MAX(`speed`) AS 'max_speed', `tn`.`name` AS 'town_name'
FROM `skills_data` AS `s_d`
RIGHT JOIN `players` AS `p` ON `s_d`.`id` = `p`.`skills_data_id`
RIGHT JOIN `teams` AS `tm` ON `p`.`team_id` = `tm`.`id`
RIGHT JOIN `stadiums` AS `s` ON `tm`.`stadium_id` = `s`.`id`
RIGHT JOIN `towns` AS `tn` ON `s`.`town_id` = `tn`.`id`
WHERE `tm`.`name` != 'Devify'
GROUP BY `tn`.`id`
ORDER BY `max_speed` DESC, `town_name`;