SELECT CONCAT(`u`.`id`, ' ', `u`.`username`) AS 'id_username', `u`.`email`
FROM `users` AS `u`
JOIN `users_photos` as `u_p` ON `u`.`id` = `u_p`.`user_id`
WHERE `u_p`.`user_id` = `u_p`.`photo_id`
ORDER BY `u`.`id`;