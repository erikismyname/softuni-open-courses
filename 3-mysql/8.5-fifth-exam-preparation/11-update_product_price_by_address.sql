DELIMITER $$

CREATE PROCEDURE `udp_update_product_price`(`address_name` VARCHAR(50))
BEGIN
	UPDATE `products` AS `p`
	JOIN `products_stores` AS `p_s` ON `p`.`id` = `p_s`.`product_id`
	JOIN `stores` AS `s` ON `p_s`.`store_id` = `s`.`id`
	JOIN `addresses` AS `a` ON `s`.`address_id` = `a`.`id`
	SET `p`.`price` = `p`.`price` + (
		CASE
			WHEN LEFT(`address_name`, 1) = '0' THEN 100
            ELSE 200
        END
    )
	WHERE `a`.`name` = `address_name`;
END$$

DELIMITER ;

CALL `udp_update_product_price`('1 Cody Pass');

SELECT `name`, `price` 
FROM products 
WHERE id = 17;