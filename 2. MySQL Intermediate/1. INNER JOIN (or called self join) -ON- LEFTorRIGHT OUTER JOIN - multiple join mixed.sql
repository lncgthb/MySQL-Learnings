-- JOIN - allow you to merge two or more tables that have a common column

-- INNER JOIN
SELECT dem.employee_id, sal.first_name, age, occupation
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- OUTER JOIN (LEFT OUTER JOIN - RIGHT OUTER JOIN)
SELECT *
FROM parks_and_recreation.employee_demographics AS dem
RIGHT OUTER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
LEFT OUTER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- SELF JOIN a join that you tie the table to itself
-- example to add +1 so it will not be the same line of data
SELECT 	emp1.employee_id AS emp_santa,
		emp1.first_name AS first_name_santa,
        emp1.last_name AS last_name_santa,
        emp2.employee_id AS emp_name,
        emp2.first_name AS first_name_emp,
        emp2.last_name AS last_name_santa
FROM parks_and_recreation.employee_salary AS emp1
INNER JOIN parks_and_recreation.employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;


-- JOINING multiple tables together
SELECT *
FROM parks_and_recreation.employee_demographics AS dem
RIGHT OUTER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_and_recreation.parks_departments AS pd
	ON sal.dept_id = pd.department_id
;
