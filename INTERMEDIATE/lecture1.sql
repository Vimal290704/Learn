-- JOINS

SELECT * 
FROM parks_and_recreation.employee_demographics
;

SELECT * 
FROM parks_and_recreation.employee_salary
;

-- innner joins by default JOIN represents inner joins
SELECT *
FROM parks_and_recreation.employee_demographics AS dem # we use aliasing to make our code more simpler without repeating tables location from where they are fetched again & again
JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id , age , occupation # we can even initialize what we are selecting prior using alias in FROM 
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ORDER BY employee_id DESC
;

-- OUTER JOINS 
# left joins
SELECT *
FROM parks_and_recreation.employee_demographics AS dem
LEFT OUTER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

# you will notice that in the upper one we didn't get data of 'RON' as there was no data of him in demographics table 
# but when we join by RIGHT we get the demographics as null of 'RON'

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
RIGHT OUTER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


-- SELF JOIN

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM parks_and_recreation.employee_salary AS emp1
JOIN parks_and_recreation.employee_salary AS emp2
	ON  emp1.employee_id + 1 = emp2.employee_id
;


-- JOINING MULTIPLE TOGETHER

SELECT * 
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_and_recreation.parks_departments AS pd
	ON sal.dept_id = pd.department_id
;

