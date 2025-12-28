-- Using your database
SHOW databases;
USE mydbo;

-- Creating a departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Creating an employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    age INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Inserting values into tables
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO employees VALUES
(101, 'Ali', 5000, 1, 30),
(102, 'Sara', 7000, 2, 28),
(103, 'John', 6000, 2, 35),
(104, 'Ayesha', 8000, 3, 40),
(105, 'Mark', 4500, 1, 25);

SELECT * from departments;
SELECT * from employees;

-- Using Logical Operators AND,OR,NOT
SELECT * 
FROM employees
WHERE salary > 5000 AND age > 30;
SELECT * 
FROM employees
WHERE dept_id = 1 OR salary < 5000;
SELECT * 
FROM employees
WHERE NOT dept_id = 2;

-- Using Arithmetic Operators SUM,COUNT,AVG
SELECT SUM(salary) AS total_salary
FROM employees;
SELECT AVG(salary) AS average_salary
FROM employees;
SELECT COUNT(emp_id) AS total_employees
FROM employees;

-- Using ORDER BY
SELECT * 
FROM employees
ORDER BY salary DESC;
SELECT * 
FROM employees
ORDER BY age ASC;








