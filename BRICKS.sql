DROP DATABASE IF EXISTS `BRICKS`;
CREATE DATABASE `BRICKS`;
USE `BRICKS`;

CREATE TABLE employee_demographics (
   employee_id INT NOT NULL,
   first_name VARCHAR(50),
   last_name VARCHAR(10),
   age INT,
   gender VARCHAR(10),
   birth_date DATE,
   PRIMARY KEY (employee_id)
);

CREATE TABLE employee_salary (
  employee_id INT NOT NULL,
  occupation VARCHAR(50),
  salary INT,
  dept_id INT,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (employee_id) REFERENCES employee_demographics(employee_id)
);

INSERT INTO employee_demographics (employee_id, first_name, last_name, age, gender, birth_date)
VALUES
(1, 'Vimal Kr.', 'Yadav', 19, 'Male', '2006-06-09'),
(2, 'Adhyayan', 'Gupta', 18, 'Male', '2006-07-21'),
(3, 'Aryen', 'Mukundam', 19, 'Male', '2006-11-01'),
(4, 'Aryan', 'Jakhar', 18, 'Male', '2006-08-21');

INSERT INTO employee_salary (employee_id, occupation, salary, dept_id)
VALUES
(1, 'C.T.O', 75000, 10273),
(2, 'C.O.O', 75000, 10274),
(3, 'Sales Manager', 75000, 10275),
(4, 'C.E.O', 75000, 10276);
