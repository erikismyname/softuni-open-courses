UPDATE `employees_clients` AS `e_c`
JOIN `clients` AS `c` ON `c`.`id` = `e_c`.`client_id`
SET `e_c`.`employee_id` = (
	SELECT COUNT(*) AS 'clients'
	FROM `employees` AS `e`
	JOIN (SELECT * FROM `employees_clients`) AS `e_c` ON `e`.`id` = `e_c`.`employee_id`
	GROUP BY `e`.`id`
	ORDER BY `clients`, `e`.`id`
    LIMIT 1
)
WHERE `e_c`.`employee_id` = `e_c`.`client_id`;