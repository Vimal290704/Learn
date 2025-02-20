SELECT *
FROM employee_demographics;

SELECT first_name 
FROM employee_demographics;

SELECT first_name , 
last_name , 
age,
age + 10,
birth_date
FROM employee_demographics;

#PEMDAS order of operations in sql 
# Parenthesis , Exponent , Multiplication  , divison , Addition , Subtraction


SELECT DISTINCT first_name , gender # DISTINCT is used to find the distinct data in the data set
FROM employee_demographics;