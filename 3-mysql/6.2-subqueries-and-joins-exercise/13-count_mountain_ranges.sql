SELECT
`c`.`country_code`,
COUNT(`m`.`mountain_range`) AS 'mountain_range'
FROM
`countries` AS `c`
JOIN
`mountains_countries` AS `m_c`
ON
`c`.`country_code` = `m_c`.`country_code`
JOIN
`mountains` AS `m`
ON
`m_c`.`mountain_id` = `m`.`id`
GROUP BY
`c`.`country_code`
HAVING
`c`.`country_code` IN ('BG', 'RU', 'US')
ORDER BY
`mountain_range` DESC;