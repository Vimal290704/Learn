-- window functions

select gender , avg(salary)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
;



select dem.first_name , dem.last_name , gender , avg(salary) over(partition by gender) 
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;


select dem.first_name , dem.last_name , gender , sum(salary) over(partition by gender order by dem.employee_id) as Rolling_total
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

select dem.first_name , dem.last_name , gender , salary ,
row_number() over(partition by gender order by salary desc) as row_no,
 # by partioning we create row_number different for male and female and no duplicates
rank() over(partition by gender order by salary desc) as rank_num
# rank classifies and give the ranks on the basis of the term we classify there can be two data entries with same rank and
# the ranks are given positionally not numerically
, dense_rank() over(partition by gender order by salary desc) as dense_rnk
# the difference in the dense rank and rank is just that the ranks are given numerically even after duplicating
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

