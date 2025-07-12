-- TRIGGERS - a block of codes that executes automatically when EVENT takes place on a specific table
-- EVENTS 

-- create a TRIGGER that put data on employee_demographics after the EVENT of putting a data at employee_salary

-- DROP TRIGGER employee_insert;

DELIMITER $$
CREATE TRIGGER employee_insert
    AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
    INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER $$

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (13, 'Jean-Ralphio', 'Saperstein', 'Exntertainment 720 CEO', 1000000, NULL);

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics;


-- EVENTS - it is like a trigger but EVENT is a SCHEDULED automation
DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND 
DO
BEGIN
    DELETE -- instead of usual SELECT *
    FROM employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;

SELECT *
FROM employee_demographics;

-- checking if the EVENT is 'ON' 
SHOW VARIABLES LIKE 'event%';  -- if this is off then search it to ON 
