SELECT `b`.`name`, COUNT(`ca`.`id`) AS 'count_of_cards'
FROM `branches` AS `b`
LEFT JOIN `employees` AS `e` ON `b`.`id` = `e`.`branch_id`
LEFT JOIN `employees_clients` AS `e_c` ON `e`.`id` = `e_c`.`employee_id`
LEFT JOIN `clients` AS `cl` ON `cl`.`id` = `e_c`.`client_id`
LEFT JOIN `bank_accounts` AS `b_a` ON `cl`.`id` = `b_a`.`client_id`
LEFT JOIN `cards` AS `ca` ON `b_a`.`id` = `ca`.`bank_account_id`
GROUP BY `b`.`id`
ORDER BY `count_of_cards` DESC, `b`.`name`;