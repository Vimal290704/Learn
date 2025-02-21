-- String Functions

Select first_name , length(first_name) as len , upper(first_name) , lower(last_name)
from employee_demographics
order by len desc
;


-- trim , left trim , right trim

select trim('   Vimal ') as trimmed;
select ltrim('   Vimal ') as trimmed;
select rtrim('   Vimal ') as trimmed;


# the number tells us how many character it is going to trim
select first_name, left(first_name , 4) 
from employee_demographics
;

select first_name, right(first_name , 4) 
from employee_demographics
;


-- substring 
select first_name , substring(first_name , 3 , 2) # string , starting index , no.of character next
from employee_demographics
;

-- replace 
select first_name , replace(first_name , 'a' , 'z')
from employee_demographics;


-- locate 
select locate('i' , "Vimal"); # 1 based index 


select first_name , last_name,
concat(first_name , " ", last_name) as full_name
from employee_demographics