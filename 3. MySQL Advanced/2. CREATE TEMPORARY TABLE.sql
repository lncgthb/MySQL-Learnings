-- TEMPORARY TABLE is only visible to the current session you are in
-- before placing it on a permanent table, utilize this to store the results immediately

-- basic way
CREATE TEMPORARY TABLE temp_table_basicway
(
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    favorite_movie VARCHAR(100)
)
;

INSERT INTO temp_table_basicway
VALUES('Alex', 'Freberg', 'Lord of the Rings')
;

SELECT *
FROM temp_table_basicway
;


-- ALEX's WAY
CREATE TEMPORARY TABLE salary_over_70k
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 70000
;

SELECT *
FROM salary_over_70k
;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;

SELECT *
FROM salary_over_50k
;


