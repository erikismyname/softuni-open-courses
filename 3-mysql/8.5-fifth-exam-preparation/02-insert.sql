INSERT INTO `products_stores`
SELECT `p`.`id`, '1' 
FROM `products` AS `p`
LEFT JOIN `products_stores` AS `p_s` ON `p`.`id` = `p_s`.`product_id` 
WHERE `p_s`.`store_id` IS NULL;