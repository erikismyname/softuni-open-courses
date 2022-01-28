SELECT
`e1`.`first_name`,
`e1`.`last_name`,
`e1`.`department_id`
FROM
`employees` AS `e1`
JOIN
(SELECT
`e2`.`department_id`, 
AVG(`e2`.`salary`) AS 'avg_salary'
FROM
`employees` AS `e2`
GROUP BY
`e2`.`department_id`)
AS
`avg_dep_salary`
ON 
`e1`.`department_id` = `avg_dep_salary`.`department_id`
WHERE
`e1`.`salary` > `avg_dep_salary`.`avg_salary`
ORDER BY
`e1`.`department_id`,
`e1`.`employee_id`
LIMIT 10;