-- WHERE Clause 

SELECT * 
FROM employee_salary
WHERE employee_id = 1
;

SELECT *
FROM employee_salary
WHERE salary > 10000
;

SELECT *
FROM employee_demographics
WHERE gender != 'Female'
;

SELECT *
FROM employee_demographics
WHERE birth_date >= '2006-07-09'
;

-- AND OR NOT -- Logical Operators

SELECT *
FROM employee_demographics
WHERE birth_date > '2006-07-21'
-- # AND gender = 'Male'
OR NOT age > 18 # it negates the statment
;


SELECT * 
FROM employee_demographics
WHERE (first_name = 'aryen' AND age = 19) OR age > 18
;


-- LIKE STATEMENT

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%y%' # the percentage denotes that it can contain anything in starting and anything in ending
;

SELECT *
FROM employee_demographics
WHERE gender LIKE 'M__%' # the number of underscores fixes that the output should have that much character
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '2006-06%'
;


