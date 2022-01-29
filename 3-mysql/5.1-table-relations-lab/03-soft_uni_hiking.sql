SELECT
`starting_point`,
`end_point`,
`leader_id`,
CONCAT(`first_name`, ' ', `last_name`) AS 'leader_name'
FROM
`campers`
JOIN
`routes`
ON
`campers`.`id` = `routes`.`leader_id`;