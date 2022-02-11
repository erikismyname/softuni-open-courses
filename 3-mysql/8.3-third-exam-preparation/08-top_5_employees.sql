SELECT CONCAT(`e`.`first_name`, ' ', `e`.`last_name`) AS 'name', `e`.`started_on`, COUNT(*) AS 'count_of_clients'
FROM `employees` AS `e`
JOIN `employees_clients` AS `e_c` ON `e`.`id` = `e_c`.`employee_id`
GROUP BY `e`.`id`
ORDER BY `count_of_clients` DESC, `e`.`id`
LIMIT 5;