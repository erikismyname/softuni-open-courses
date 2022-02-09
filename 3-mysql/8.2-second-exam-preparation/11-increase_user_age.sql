DELIMITER $$

CREATE PROCEDURE `udp_modify_user`(`address` VARCHAR(30), `town` VARCHAR(30))
BEGIN
	DECLARE `user` VARCHAR(30);
    SET `user` := (
		SELECT `u`.`username`
		FROM `users` AS `u`
		JOIN `addresses` AS `a` ON `u`.`id` = `a`.`user_id`
		WHERE `a`.`address` = `address` AND `a`.`town` = `town`
    );
	IF `user` IS NOT NULL
	THEN
    UPDATE `users`
    SET `age` = `age` + 10
    WHERE `username` = `user`;
    END IF;
END$$

DELIMITER ;

CALL `udp_modify_user`('97 Valley Edge Parkway', 'Divinópolis');

SELECT `username`, `email`, `gender`, `age`, `job_title`
FROM `users`
WHERE `username` = 'eblagden21';