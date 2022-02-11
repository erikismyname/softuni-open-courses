DELIMITER $$

CREATE PROCEDURE `udp_clientinfo`(`full_name` VARCHAR(30))
BEGIN
	SELECT `cl`.`full_name`, `cl`.`age`, `b_a`.`account_number`, CONCAT('$', `b_a`.`balance`) AS 'balance'
	FROM `clients` AS `cl`
	LEFT JOIN `bank_accounts` AS `b_a` ON `cl`.`id` = `b_a`.`client_id`
	WHERE `cl`.`full_name` = `full_name`;
END$$

DELIMITER ;

CALL `udp_clientinfo`('Hunter Wesgate');