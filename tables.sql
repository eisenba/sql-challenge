
CREATE TABLE employees (
	emp_no PRIMARY KEY,
	emp_title VARCHAR(5),
	birth_date DATE, 
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE
);
SELECT * FROM employees;

CREATE TABLE departments (
	dept_no VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(30)
);

SELECT * FROM departments;

CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(30)
);

SELECT * FROM titles;

CREATE TABLE dept_emp (
	emp_no VARCHAR(10),
	dept_no VARCHAR(5)
);


CREATE TABLE dept_manager (
	dept_no VARCHAR(5),
	emp_no VARCHAR(10)
);

COPY dept_manager(dept_no, emp_no)
FROM 'F:\Matt\GitHome\sql-challenge\data\dept_manager.csv'
DELIMITER ','
CSV HEADER;

select * from dept_manager;

CREATE TABLE salaries (
	emp_no VARCHAR(10),
	salary INTEGER
);

COPY salaries(emp_no, salary)
FROM 'F:\Matt\GitHome\sql-challenge\data\salaries.csv'
DELIMITER ','
CSV HEADER;

select * from salaries;














