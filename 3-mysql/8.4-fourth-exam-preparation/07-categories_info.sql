SELECT `c`.`name`, COUNT(`g_c`.`game_id`) AS 'games_count', ROUND(AVG(`g`.`budget`), 2) AS 'avg_budget', MAX(`g`.`rating`) AS 'max_rating'
FROM `categories` AS `c`
LEFT JOIN `games_categories` AS `g_c` ON `c`.`id` = `g_c`.`category_id`
LEFT JOIN `games` AS `g` ON `g_c`.`game_id` = `g`.`id`
GROUP BY `c`.`name`
HAVING `max_rating` >= 9.5
ORDER BY `games_count` DESC, `c`.`name`;