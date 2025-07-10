-- LIMIT & ALIASING

-- LIMIT - limiting rows you want in your output
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2, 1 -- this is use only for specific column (2 is the start or the limit; if separated by a comma, it will start a row after)
;


-- ALIASING is a way to change the name of the column 
SELECT gender, AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40
;
