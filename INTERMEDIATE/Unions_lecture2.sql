-- Unions
# by default it is distinct as it is an union of both set
Select first_name , last_name
from employee_demographics
union distinct 
Select first_name , last_name
from employee_salary
;

Select first_name , last_name , 'Old Man' as label
from employee_demographics
where age > 40 AND gender = 'Male'
union 
Select first_name , last_name , 'Old Lady' as label
from employee_demographics
where age > 40 AND gender = 'Female'
union 
Select first_name , last_name , "Highly Paid Employee" as label
from employee_salary
where salary > 70000
;