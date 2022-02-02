SELECT
`c`.`country_name`,
MAX(`p`.`elevation`) AS 'highest_peak_elevation',
MAX(`r`.`length`) AS 'longest_river_length'
FROM
`countries` AS `c`
LEFT JOIN
`mountains_countries` AS `m_c` 
ON
`c`.`country_code` = `m_c`.`country_code`
LEFT JOIN
`peaks` AS `p`
ON
`m_c`.`mountain_id` = `p`.`mountain_id`
LEFT JOIN
`countries_rivers` AS `c_r`
ON
`c`.`country_code` = `c_r`.`country_code`
LEFT JOIN
`rivers` AS `r`
ON
`c_r`.`river_id` = `r`.`id`
GROUP BY
`c`.`country_name`
ORDER BY
`highest_peak_elevation` DESC,
`longest_river_length` DESC,
`c`.`country_name`
LIMIT 5;