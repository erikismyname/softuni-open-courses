USE `diablo`;

SELECT
`name`,
SUBSTRING(`start`, 1, 10) AS `start`
FROM `games`
WHERE YEAR(`start`)
BETWEEN 2011 AND 2012
ORDER BY
`start`,
`name`
LIMIT 50;