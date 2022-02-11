DELIMITER $$

CREATE FUNCTION `udf_users_photos_count`(`username` VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (
		SELECT COUNT(*)
		FROM `users` AS `u`
		JOIN `users_photos` AS `u_p` ON `u`.`id` = `u_p`.`user_id`
		WHERE `u`.`username` = `username`
    );
END$$

DELIMITER ;

SELECT `udf_users_photos_count`('ssantryd') AS 'photosCount';
		