SELECT
	`g`.`name`,
    IF(`g`.`budget` < 50000, 'Normal budget', 'Insufficient budget') AS 'budget_level',
    `t`.`name` AS 'team_name',
    `a`.`name` AS 'address_name'
FROM `games` AS `g`
LEFT JOIN `games_categories` AS `g_c` ON `g`.`id` = `g_c`.`game_id`
LEFT JOIN `teams` AS `t` ON `g`.`team_id` = `t`.`id`
LEFT JOIN `offices` AS `o` ON `t`.`office_id` = `o`.`id`
LEFT JOIN `addresses` AS `a` ON `o`.`address_id` = `a`.`id`
WHERE `g`.`release_date` IS NULL AND `g_c`.`category_id` IS NULL
ORDER BY `g`.`name`;