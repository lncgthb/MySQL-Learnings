-- WINDOW FUNCTIONS grouping or create partition but with a unique rows on the output 

-- comparing GROUP BY with WINDOW FUNCTIONS
SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
;

-- window function - average salary
-- OVER(PARTITION BY gender) 
SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM parks_and_recreation.employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- window function - sum salary plus rolling total
-- OVER(PARTITION BY gender ORDER BY dem.employee_id) 
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
	SUM(salary) OVER(PARTITION BY gender ORDER BY sal.employee_id) AS rolling_total
FROM parks_and_recreation.employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


-- window function - row number - rank - dense_rank
-- OVER(PARTITION BY gender ORDER BY dem.employee_id) 
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
	ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
	RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num, -- considering same rank as other rank
	DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num -- considering same rank as one
FROM parks_and_recreation.employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;