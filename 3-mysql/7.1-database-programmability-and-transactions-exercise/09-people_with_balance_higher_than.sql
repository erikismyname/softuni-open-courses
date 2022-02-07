DELIMITER $$

CREATE PROCEDURE `usp_get_holders_with_balance_higher_than`(`input_balance` DECIMAL(15, 4))
BEGIN
	SELECT `first_name`, `last_name`
	FROM `accounts` AS `a`
	JOIN `account_holders` AS `a_h` ON `a`.`account_holder_id` = `a_h`.`id`
	GROUP BY `account_holder_id`
	HAVING SUM(`balance`) > `input_balance`
	ORDER BY `a`.`account_holder_id`;
END$$

DELIMITER ;

CALL `usp_get_holders_with_balance_higher_than`(7000);  