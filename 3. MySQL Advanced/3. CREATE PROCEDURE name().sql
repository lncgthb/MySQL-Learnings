-- STORED PROCEDURES - a way to sae your sql code and use over and over again
-- this is like a DEF define on python or others

-- basic way
USE parks_and_recreation;
CREATE PROCEDURE salary_over_50k()
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;

CALL parks_and_recreation.salary_over_50k();


-- to perform two or more queries and avoid mixing them with a process, DELIMITER will alter the semicolon

DELIMITER $$
USE parks_and_recreation $$
CREATE PROCEDURE large_salaries_10k_50k()
BEGIN
	SELECT *
	FROM parks_and_recreation.employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM parks_and_recreation.employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL parks_and_recreation.large_salaries_10k_50k();


-- PARAMETERS are variables that is pass as an input into a stored procedure, 
-- and stored procedure allows the input value to pass into your code

DELIMITER $$ -- having multiple queries - DELIMITER
USE parks_and_recreation $$
CREATE PROCEDURE salary_1st_employee(parameter_employee_id INT) -- parameter is same with the header
BEGIN
	SELECT first_name, salary
	FROM employee_salary
	WHERE employee_id = parameter_employee_id;
END $$
DELIMITER ;

CALL parks_and_recreation.salary_1st_employee(1);


