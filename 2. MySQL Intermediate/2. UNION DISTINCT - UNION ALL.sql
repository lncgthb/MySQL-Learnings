-- UNION use two SELECT FUNCTIONS to combine rows.
-- UNION DISTINCT
-- UNION ALL

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;

-- not applicable to our data, but it serves as an example
SELECT *
FROM parks_and_recreation.employee_demographics
UNION ALL
SELECT *
FROM parks_and_recreation.employee_salary
;


SELECT first_name, last_name, 'Old Man' AS label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'male'
UNION DISTINCT
SELECT first_name, last_name, 'Old Lady' AS label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'female'
UNION DISTINCT
SELECT first_name, last_name, 'Highly Paid Employee' AS label
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
; 

