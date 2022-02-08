DELIMITER $$

CREATE PROCEDURE `udp_find_playmaker`(`min_dribble_points` INT, `team_name` VARCHAR(45))
BEGIN
	SELECT CONCAT(`p`.`first_name`, ' ', `p`.`last_name`) AS 'full_name', `p`.`age`, `p`.`salary`, `s_d`.`dribbling`, `s_d`.`speed`, `t`.`name` AS 'team_name'
	FROM `teams` AS `t`
	JOIN `players` AS `p` ON `t`.`id` = `p`.`team_id`
	JOIN `skills_data` AS `s_d` ON `p`.`skills_data_id` = `s_d`.`id`
	WHERE `s_d`.`dribbling` > `min_dribble_points` AND `t`.`name` = `team_name` AND `s_d`.`speed` > (SELECT AVG(`speed`) FROM `skills_data`)
	ORDER BY `s_d`.`speed` DESC
	LIMIT 1;
END$$

DELIMITER ;

CALL `udp_find_playmaker`(20, 'Skyble');