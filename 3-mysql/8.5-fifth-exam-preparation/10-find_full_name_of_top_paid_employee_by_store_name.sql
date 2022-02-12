DELIMITER $$

CREATE FUNCTION `udf_top_paid_employee_by_store`(`store_name` VARCHAR(50))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	RETURN (
		SELECT
			CONCAT(`e`.`first_name`, ' ', `e`.`middle_name`, '. ', `e`.`last_name`, ' works in store for ', 2020 - YEAR(`e`.`hire_date`), ' years ')
		FROM `stores` AS `s`
		JOIN `employees` AS `e` ON `s`.`id` = `e`.`store_id`
		WHERE `s`.`name` = `store_name`
		ORDER BY `e`.`salary` DESC
		LIMIT 1
    );
END$$

DELIMITER ;

SELECT `udf_top_paid_employee_by_store`('Stronghold') as 'full_info';