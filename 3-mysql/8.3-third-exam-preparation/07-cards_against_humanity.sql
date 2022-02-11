SELECT `ca`.`id`, CONCAT(`ca`.`card_number`, ' : ', `cl`.`full_name`) AS 'card_token'
FROM `clients` AS `cl`
JOIN `bank_accounts` AS `b_a` ON `cl`.`id` = `b_a`.`client_id`
JOIN `cards` AS `ca` ON `b_a`.`id` = `ca`.`bank_account_id`
ORDER BY `ca`.`id` DESC;