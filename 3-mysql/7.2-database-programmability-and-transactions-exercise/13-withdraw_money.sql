DELIMITER $$

CREATE PROCEDURE `usp_withdraw_money`(`account_id` INT, `money_amount` DECIMAL(15, 4))
BEGIN
	START TRANSACTION;
    IF ((SELECT `balance` FROM `accounts` WHERE `id` = `account_id`) < `money_amount` OR `money_amount` <= 0) THEN ROLLBACK;
    ELSE 
    UPDATE `accounts`
    SET `balance` = `balance` - `money_amount`
    WHERE `id` = `account_id`;
    END IF;
END$$

DELIMITER ;

CALL `usp_withdraw_money`(1, 200);