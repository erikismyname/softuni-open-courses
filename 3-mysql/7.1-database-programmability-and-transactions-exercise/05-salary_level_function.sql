DELIMITER $$

CREATE FUNCTION `ufn_get_salary_level`(`salary` DECIMAL(10, 4))
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
	RETURN
	(CASE
		WHEN `salary` < 30000 THEN 'Low'
		WHEN `salary` <= 50000 THEN 'Average'
		ELSE 'High'
	END);
END$$

DELIMITER ;

SELECT UFN_GET_SALARY_LEVEL(125500);