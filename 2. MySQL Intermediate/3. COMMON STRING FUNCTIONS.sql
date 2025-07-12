-- STRING FUNCTIONS - built in function that you can use for strings

-- LENGTH
SELECT first_name, LENGTH(first_name) AS Length_of_Name
FROM parks_and_recreation.employee_demographics
ORDER BY 2
;

-- place this after a comma in the SELECT FUNCTION.
-- other examples:
-- UPPER

-- LOWER

-- TRIM - LTRIM - RTRIM   remove excess white spaces ALL-LEFT-RIGHT

-- SUBSTRING(first_name,3,2) - LEFT(first_name, 4) - RIGHT(first_name, 4)

-- REPLACE(first_name, 'a', 'zz')

-- LOCATE ('x', 'Alexander')
-- LOCATE('An', first_name)

-- CONCAT(first_name, ' ', last_name) AS full_name 
