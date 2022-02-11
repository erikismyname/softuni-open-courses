DELETE `g`.*
FROM `games` AS `g`
LEFT JOIN `games_categories` AS `g_c` ON `g`.`id` = `g_c`.`game_id`
WHERE `g`.`release_date` IS NULL AND `g_c`.`category_id` IS NULL;