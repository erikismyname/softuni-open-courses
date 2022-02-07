DELIMITER $$

CREATE PROCEDURE `usp_transfer_money`(`from_account_id` INT, `to_account_id` INT, `amount` DECIMAL(15, 4))
BEGIN
	START TRANSACTION;
	IF ((SELECT COUNT(`id`) FROM `accounts` WHERE `id` = `from_account_id`) = 0 OR (SELECT COUNT(`id`) FROM `accounts` WHERE `id` = `to_account_id`) = 0) THEN ROLLBACK;
    ELSEIF (`amount` <= 0) THEN ROLLBACK;
    ELSEIF (`from_account_id` = `to_account_id`) THEN ROLLBACK;
    ELSEIF ((SELECT `balance` FROM `accounts` WHERE `id` = `from_account_id`) < `amount`) THEN ROLLBACK;
    ELSE
    UPDATE `accounts`
    SET `balance` = `balance` + `amount`
    WHERE `id` = `to_account_id`;
    UPDATE `accounts`
    SET `balance` = `balance` - `amount`
    WHERE `id` = `from_account_id`;
    END IF;
END$$

DELIMITER ;

SELECT `balance` FROM `accounts` WHERE `id` = 1