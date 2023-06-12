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

-- Count Query On 5 Columns
SELECT COUNT(id), COUNT(emp_number), COUNT(first_name), COUNT(last_name), COUNT(age) FROM employee_details;

-- Sum Query On 5 Columns
SELECT SUM(id), SUM(emp_number), SUM(age), SUM(salary) FROM employee_details;

-- Max Query On 5 Columns
SELECT MAX(id), MAX(emp_number), MAX(age), MAX(salary) FROM employee_details;

-- Min Query On 5 Columns
SELECT MIN(id), MIN(emp_number), MIN(age), MIN(salary) FROM employee_details;

-- Avg Query On 5 Columns
SELECT AVG(id), AVG(emp_number), AVG(age), AVG(salary) FROM employee_details;

-- 3 Instr Query
SELECT id, first_name, INSTR(first_name, 'AN') FROM employee_details;
SELECT id, department, INSTR(department, 'Sales') FROM employee_details;
SELECT id, city, INSTR(city, 'Bang') FROM employee_details;

-- 3 Substr Query
SELECT id, SUBSTR(first_name, 2, 4) FROM employee_details;
SELECT id, SUBSTR(last_name, 1, 3) FROM employee_details;
SELECT id, SUBSTR(email, 1, 10) FROM employee_details;

-- Order by Query
SELECT id, first_name, last_name FROM employee_details ORDER BY first_name;
SELECT id, first_name, last_name FROM employee_details ORDER BY first_name DESC;

-- DISTINCT Query
SELECT DISTINCT(department) FROM employee_details;

-- Length Query
SELECT id, first_name, LENGTH(first_name), department FROM employee_details; 
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------