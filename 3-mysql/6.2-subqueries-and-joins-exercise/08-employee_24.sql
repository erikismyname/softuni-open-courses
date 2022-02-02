SELECT
`e`.`employee_id`,
`e`.`first_name`,
IF(YEAR(`p`.`start_date`) >= 2005, NULL, `p`.`name`) AS 'project_name'
FROM
`employees` AS `e`
JOIN
`employees_projects` AS `e_p`
ON
`e`.`employee_id` = `e_p`.`employee_id`
JOIN
`projects` AS `p`
ON
`e_p`.`project_id` = `p`.`project_id`
WHERE
`e`.`employee_id` = 24
ORDER BY
`project_name`;