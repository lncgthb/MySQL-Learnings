-- SUBQUERY a query within a query

-- identifying employee who only works at dept_id = 1
-- subquery with WHERE statement
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE employee_id IN 
	(SELECT employee_id
	FROM parks_and_recreation.employee_salary
    WHERE dept_id = 1
    )
;	

-- subquery with SELECT statement
SELECT first_name, last_name, salary,
	(SELECT AVG(salary)
    FROM parks_and_recreation.employee_salary
    )
FROM parks_and_recreation.employee_salary
;

-- subquery with FROM statement
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT AVG(`MAX(age)`)
FROM
	(SELECT gender, AVG(age) AS avg_age, MAX(age), MIN(age), COUNT(age)
	FROM parks_and_recreation.employee_demographics
	GROUP BY gender
    ) AS agg_table
;

