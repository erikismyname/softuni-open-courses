USE `geography`;

SELECT
`c`.`country_code`,
`m`.`mountain_range`,
`p`.`peak_name`,
`p`.`elevation`
FROM
`countries` AS `c`
JOIN
`mountains_countries` AS `m_c`
ON
`c`.`country_code` = `m_c`.`country_code`
JOIN
`peaks` AS `p`
ON
`m_c`.`mountain_id` = `p`.`mountain_id`
JOIN
`mountains` AS `m`
ON
`p`.`mountain_id` = `m`.`id`
WHERE
`c`.`country_code`= 'BG'
AND
`p`.`elevation` > 2835
ORDER BY
`p`.`elevation` DESC;