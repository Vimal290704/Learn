-- HAVING vs WHERE 

SELECT gender , AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender
;
# in the above statement we are trying to access the groups that has not been created yet

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT occupation , AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;







-- LIMIT AND ALIASING 

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2 , 1
;




-- ALIASING 
SELECT gender , AVG(age) avg_age # AS is already implemented 
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;