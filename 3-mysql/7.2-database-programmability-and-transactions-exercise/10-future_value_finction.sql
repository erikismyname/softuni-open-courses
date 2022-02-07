DELIMITER $$

CREATE FUNCTION `ufn_calculate_future_value`(`sum` DECIMAL(15, 4), `yearly_interest_rate` DOUBLE, `years` INT)
RETURNS DECIMAL (15, 4)
DETERMINISTIC
BEGIN
	RETURN `sum` * POWER((1 + `yearly_interest_rate`), `years`);
END$$

DELIMITER ;

SELECT `ufn_calculate_future_value`(1000, 0.5, 5);