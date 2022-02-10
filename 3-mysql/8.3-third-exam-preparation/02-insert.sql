INSERT INTO `cards` (`card_number`, `card_status`, `bank_account_id`)
SELECT REVERSE(`cl`.`full_name`), 'Active', `cl`.`id`
FROM `clients` AS `cl`
WHERE `cl`.`id` BETWEEN 191 AND 200;