-- Group By 

SELECT age
FROM employee_demographics
GROUP BY age
;
# if we are not performing any aggregated operation then select -- should match group by -- 

SELECT *
FROM employee_salary;

SELECT occupation , salary
FROM employee_salary
GROUP BY occupation , salary
;


SELECT gender , AVG(age) , MAX(age) , MIN(age) , COUNT(age)
FROM employee_demographics
GROUP BY gender
;


-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;

SELECT *
FROM employee_demographics
ORDER BY  gender , age # the first part will be given more priority 
;
-- here we first ordered all the females by their age then all the males by their age  




