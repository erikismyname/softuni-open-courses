DELETE FROM `employees`
WHERE `manager_id` != `id`
AND `salary` >= 6000;