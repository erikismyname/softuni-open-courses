UPDATE `coaches`
SET `coach_level` = `coach_level` + 1
WHERE `first_name` LIKE 'A%'
AND `id` IN (
	SELECT `coach_id` FROM `players_coaches`
);