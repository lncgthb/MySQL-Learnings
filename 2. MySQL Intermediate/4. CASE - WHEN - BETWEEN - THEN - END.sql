-- CASE Statements - adding logic in all of your statements -- if-else statements

-- CASE -
-- WHEN - THEN 
-- WHEN - BETWEEN - THEN
-- WHEN - THEN
-- END AS age_bracket


-- identifying who is young, old, and senior.
SELECT first_name, last_name, age,
	CASE
		WHEN age <= 30 THEN 'Young'
		WHEN age BETWEEN 30 AND 50 THEN 'Old'
		WHEN age >= 50 THEN 'Senior'
	END AS age_bracket
FROM parks_and_recreation.employee_demographics
;

-- pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = additional 10% bonus
SELECT first_name, last_name, department_name, salary,
	CASE
		WHEN salary < 50000 THEN salary * 1.05
		WHEN salary > 50000 THEN salary * 1.07
	END AS new_salary,
	CASE
		WHEN department_name = 'Finance' THEN salary * .10
	END AS bonus
FROM parks_and_recreation.employee_salary AS sal
INNER JOIN parks_and_recreation.parks_departments AS dp
	ON sal.dept_id = dp.department_id
;




