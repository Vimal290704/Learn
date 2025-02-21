-- case statements

select first_name , last_name, age, 
case 
	when age <= 30 then 'young munda / mundi'
    when age between 31 and 50 then 'old'
    when age >= 50 then 'mar ja bhai'
end as category
from employee_demographics;



-- pay increase and bonus if < 50000 -> 5%  else  -> 7%

select first_name , last_name , salary,
case 
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
end as New_salary,
case 
	when dept_id = 6 then salary * 1.05
end as Bonus
from employee_salary
;
