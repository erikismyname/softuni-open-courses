DELIMITER $$

CREATE FUNCTION `udf_client_cards_count`(`name` VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (
		SELECT COUNT(`ca`.`id`)
		FROM `clients` AS `cl`
		LEFT JOIN `bank_accounts` AS `b_a` ON `cl`.`id` = `b_a`.`client_id`
		LEFT JOIN `cards` AS `ca` ON `b_a`.`id` = `ca`.`bank_account_id`
		WHERE `cl`.`full_name` = `name`
		GROUP BY `cl`.`id`
	);
END$$

DELIMITER ;

SELECT `full_name`, `udf_client_cards_count`('Baxy David') AS 'cards'
FROM `clients`
WHERE `full_name` = 'Baxy David';