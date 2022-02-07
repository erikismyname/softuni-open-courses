DELIMITER $$

CREATE PROCEDURE `usp_get_employees_by_salary_level`(`salary_lvl` VARCHAR(7))
BEGIN
	SELECT `first_name`, `last_name`
	FROM `employees`
	WHERE `ufn_get_salary_level`(`salary`) = `salary_lvl`
	ORDER BY `first_name` DESC, `last_name` DESC;
END$$

DELIMITER ;

CALL `usp_get_employees_by_salary_level`('high');