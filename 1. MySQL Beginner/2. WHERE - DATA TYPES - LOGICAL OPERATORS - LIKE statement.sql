# WHERE clause - filter our data or records based on certain criteria
SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie'
;

# DATA TYPES (+ - * / = !=)
# LOGICAL OPERATORS  (and or not)
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male'
;


# LIKE Statement   (% = anything) (_ = specific value)
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%'  -- other examples ('%er%'     'er%'     'a__')
OR birth_date LIKE '1988%'
;

