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

-- CONCAT Query
SELECT CONCAT(first_name, last_name) FROM employee_details;

-- Created table from existing table
CREATE TABLE employee_details_2 as SELECT * FROM employee_details;
SELECT * FROM employee_details_2;
SHOW TABLES;
DESC employee_details_2;

-- Renamed exiting table
RENAME TABLE employee_details_2 TO employee_detail_2;

-- LIKE Query
SELECT id, first_name FROM employee_details WHERE first_name LIKE "a%";
SELECT id, first_name FROM employee_details WHERE first_name LIKE "%a";
SELECT id, first_name FROM employee_details WHERE first_name LIKE "%an%";

-- NOT LIKE Query
SELECT id, first_name FROM employee_details WHERE first_name NOT LIKE "a%";
SELECT id, first_name FROM employee_details WHERE first_name NOT LIKE "%a";
SELECT id, first_name FROM employee_details WHERE first_name NOT LIKE "%an%";

-- LOWER and UPPER Query
SELECT id, LOWER(first_name) FROM employee_details;
SELECT id, UPPER(first_name) FROM employee_details;

-- LTRIM and RTRIM Query
SELECT LTRIM(first_name), RTRIM(last_name) FROM employee_details;
SELECT LTRIM(RTRIM(first_name)) FROM employee_details;
SELECT RTRIM(LTRIM(last_name)) FROM employee_details;

-- LPAD and RPAD Query
SELECT LPAD(first_name, 10, '*'), RPAD(last_name, 15, '-')  FROM employee_details;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------