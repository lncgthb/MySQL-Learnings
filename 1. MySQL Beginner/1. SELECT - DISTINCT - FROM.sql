-- creating a query to view our data from the tables in our database
SELECT *
FROM parks_and_recreation.employee_demographics;

-- SELECT and FROM
SELECT first_name, 
        last_name, 
        birth_date,
        age,
        age + 10  -- PEMDAS
FROM parks_and_recreation.employee_demographics;


# DISTINCT - selecting unique data values
SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;
