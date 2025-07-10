# GROUP BY - group specific data with the same values
SELECT *
FROM parks_and_recreation.employee_demographics
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) 
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

-- try with count(gender) if the example learnings will be the same
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(gender) 
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

# ORDER BY ascending or descending (ASC or DESC)
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender ASC, age DESC
;
