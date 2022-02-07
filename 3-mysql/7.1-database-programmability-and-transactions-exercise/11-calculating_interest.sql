DELIMITER $$

CREATE PROCEDURE `usp_calculate_future_value_for_account`(`account_id` INT, `interest_rate` DECIMAL(15, 4))
BEGIN
	SELECT
	`a`.`id` AS 'account_id', 
	`a_h`.`first_name`, 
	`a_h`.`last_name`, 
	`a`.`balance` AS 'current_balance', 
	`ufn_calculate_future_value`(`a`.`balance`, `interest_rate`, 5) AS 'balance_in_5_years' 
    FROM `accounts` AS `a`
    JOIN `account_holders` AS `a_h` ON `a`.`account_holder_id` = `a_h`.`id`
    WHERE `a`.`id` = `account_id`;
END$$

DELIMITER ;

CALL `usp_calculate_future_value_for_account`(1, 0.1);