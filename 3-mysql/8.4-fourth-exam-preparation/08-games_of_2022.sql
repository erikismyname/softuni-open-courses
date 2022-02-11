SELECT 
	`g`.`name`, 
    `g`.`release_date`, 
    CONCAT(SUBSTRING(`description`, 1, 10), '...') AS 'summary',
    (
		CASE
			WHEN MONTH(`g`.`release_date`) BETWEEN 1 AND 3 THEN 'Q1'
            WHEN MONTH(`g`.`release_date`) BETWEEN 4 AND 6 THEN 'Q2'
            WHEN MONTH(`g`.`release_date`) BETWEEN 7 AND 9 THEN 'Q3'
            ELSE 'Q4'
		END
	) AS 'quarter',
    `t`.`name` AS 'team_name'
FROM `games` AS `g`
JOIN `teams` AS `t` ON `g`.`team_id` = `t`.`id`
WHERE YEAR(`g`.`release_date`) = 2022
	AND MONTH(`g`.`release_date`) % 2 = 0
    AND RIGHT(`g`.`name`, 1) = 2
ORDER BY `quarter`;