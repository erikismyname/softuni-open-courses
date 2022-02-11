DELIMITER $$

CREATE PROCEDURE `udp_update_budget`(`min_game_rating` FLOAT)
BEGIN
	UPDATE `games` AS `g`
	LEFT JOIN `games_categories` AS `g_c` ON `g`.`id` = `g_c`.`game_id`
	SET `g`.`budget` = `g`.`budget` + 100000, `g`.`release_date` = DATE_ADD(`g`.`release_date`, INTERVAL 1 YEAR)
	WHERE 
		`g_c`.`category_id` IS NULL
		AND `g`.`release_date` IS NOT NULL
		AND `g`.`rating` > `min_game_rating`;
END$$

DELIMITER ;

CALL `udp_update_budget`(8);