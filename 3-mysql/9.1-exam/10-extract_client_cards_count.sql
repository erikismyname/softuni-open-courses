DELIMITER $$

CREATE FUNCTION `udf_customer_products_count`(`name` VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (
		SELECT COUNT(`o`.`id`) 
		FROM `customers` AS `c`
		LEFT JOIN `orders` AS `o` ON `c`.`id` = `o`.`customer_id`
		LEFT JOIN `orders_products` AS `o_p` ON `o`.`id` = `o_p`.`order_id`
		LEFT JOIN `products` AS `p` ON `o_p`.`product_id` = `p`.`id`
		WHERE `c`.`first_name` = `name`
    );
END$$

DELIMITER ;

SELECT 
	`first_name`,
	`last_name`, 
    `udf_customer_products_count`('Shirley') as 'total_products'
FROM `customers`
WHERE `first_name` = 'Shirley';