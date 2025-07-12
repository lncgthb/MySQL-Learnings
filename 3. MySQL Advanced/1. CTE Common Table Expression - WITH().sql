-- CTE - you can define a specific block that you can refer to with the main query by using a common table expression
-- query inside a query that is more properly formatted than a subquery
-- similar to a DEF function, this can be used right away rather than after 
-- since it is only a temporary table

WITH CTE_Example (Gender, AVG_Sal, MAX_Sal, MIN_Sal, COUNT_SAL) AS -- this is overriding the aliasing below if you want it
(
	SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
	FROM parks_and_recreation.employee_demographics AS dem
	INNER JOIN parks_and_recreation.employee_salary AS sal
		ON dem.employee_id = sal.employee_id
	GROUP BY gender
)
SELECT *
FROM CTE_Example
;


-- 2 or more cte in a query
WITH CTE_Example2 AS
(
	SELECT employee_id, gender, birth_date
	FROM parks_and_recreation.employee_demographics
	WHERE birth_date > '1985-01-01'
),
CTE_Example3 AS
(
	SELECT employee_id, salary
	FROM parks_and_recreation.employee_salary
	WHERE salary > 50000
)
SELECT *
FROM CTE_Example2
INNER JOIN CTE_Example3
	ON CTE_Example2.employee_id = CTE_Example3.employee_id
;