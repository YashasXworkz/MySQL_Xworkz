/*CREATE DATABASE employees;
USE employees;
CREATE TABLE employee_details(id BIGINT, emp_number INT, first_name VARCHAR(50), 
last_name VARCHAR(50), age INT, salary BIGINT, department VARCHAR(50), 
city VARCHAR(50), designation VARCHAR(50), email VARCHAR(100));
INSERT INTO employee_details(id, emp_number, first_name, last_name, age, salary, department, city, designation, email)
VALUES
(1, 1001, 'Anand', 'Kumar', 30, 50000, 'Sales', 'Bangalore', 'Manager', 'anand.kumar@example.com'),
(2, 1002, 'Deepika', 'Rao', 35, 60000, 'Marketing', 'Mysore', 'Analyst', 'deepika.rao@example.com'),
(3, 1003, 'Arjun', 'Shetty', 40, 70000, 'IT', 'Hubli', 'Developer', 'arjun.shetty@example.com'),
(4, 1004, 'Amrita', 'Nayak', 28, 55000, 'HR', 'Belgaum', 'HR Manager', 'amrita.nayak@example.com'),
(5, 1005, 'Ravi', 'Gowda', 32, 65000, 'Finance', 'Mangalore', 'Accountant', 'ravi.gowda@example.com'),
(6, 1006, 'Manju', 'Patil', 37, 75000, 'Operations', 'Gulbarga', 'Supervisor', 'manju.patil@example.com'),
(7, 1007, 'Naveen', 'Kulkarni', 45, 80000, 'IT', 'Shimoga', 'Project Manager', 'naveen.kulkarni@example.com'),
(8, 1008, 'Lakshmi', 'Raj', 31, 60000, 'Sales', 'Udupi', 'Sales Executive', 'lakshmi.raj@example.com'),
(9, 1009, 'Girish', 'Prasad', 33, 70000, 'Marketing', 'Bidar', 'Marketing Manager', 'girish.prasad@example.com'),
(10, 1010, 'Anjali', 'Sharma', 29, 55000, 'Finance', 'Hassan', 'Financial Analyst', 'anjali.sharma@example.com');
SELECT * FROM employee_details;*/

USE employees;

-- Group By Query
SELECT department, COUNT(department) AS count FROM employee_details GROUP BY department;
SELECT department, AVG(salary) AS average_salary FROM employee_details GROUP BY department;
SELECT department, SUM(salary) AS total_salary FROM employee_details GROUP BY department;
SELECT department, MIN(salary) AS min_salary FROM employee_details GROUP BY department; 
SELECT department, MAX(salary) AS max_salary FROM employee_details GROUP BY department;

-- Having Query
SELECT department as dep, sum(salary) as total_salary FROM employee_details GROUP BY dep HAVING
sum(salary) > 55000;
SELECT id, first_name, age FROM employee_details GROUP BY id, first_name, age
HAVING max(age) >= 40 ORDER BY age DESC;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------