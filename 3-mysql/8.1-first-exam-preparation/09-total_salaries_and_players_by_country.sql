SELECT `c`.`name`, COUNT(`p`.`id`) AS 'total_count_of_players', SUM(`p`.`salary`) AS 'total_sum_of_salaries'
FROM `players` AS `p`
RIGHT JOIN `teams` AS `tm` ON `p`.`team_id` = `tm`.`id`
RIGHT JOIN `stadiums` AS `s` ON `tm`.`stadium_id` = `s`.`id`
RIGHT JOIN `towns` AS `tn` ON `s`.`town_id` = `tn`.`id`
RIGHT JOIN `countries` AS `c` ON `tn`.`country_id` = `c`.`id`
GROUP BY `c`.`id`
ORDER BY `total_count_of_players` DESC, `name`;