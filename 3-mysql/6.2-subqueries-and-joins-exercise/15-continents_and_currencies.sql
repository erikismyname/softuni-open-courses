SELECT
`c1`.`continent_code`,
`c1`.`currency_code`,
COUNT(*) AS 'currency_usage'
FROM
`countries` AS `c1`
GROUP BY
`c1`.`continent_code`,
`c1`.`currency_code`
HAVING
`currency_usage` > 1
AND
`currency_usage` =
(SELECT
COUNT(*) AS 'currency_usage'
FROM
`countries` AS `c2`
GROUP BY
`c2`.`continent_code`,
`c2`.`currency_code`
HAVING
`c1`.`continent_code` = `c2`.`continent_code`
ORDER BY
`currency_usage` DESC
LIMIT 1)
ORDER BY
`c1`.`continent_code`,
`c1`.`currency_code`;