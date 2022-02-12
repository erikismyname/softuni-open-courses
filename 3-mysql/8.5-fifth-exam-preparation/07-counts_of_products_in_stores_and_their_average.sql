SELECT `s`.`name`, COUNT(`p`.`id`) AS 'product_count', ROUND(AVG(`p`.`price`), 2) AS 'avg'
FROM `stores` AS `s`
LEFT JOIN `products_stores` AS `p_s` ON `s`.`id` = `p_s`.`store_id`
LEFT JOIN `products` AS `p` ON `p_s`.`product_id`  = `p`.`id`
GROUP BY `s`.`id`
ORDER BY `product_count` DESC, `avg` DESC, `s`.`id`;