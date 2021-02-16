CREATE TABLE salaries (
	emp_no VARCHAR(10),
	salary INTEGER
);

COPY salaries(emp_no, salary)
FROM 'F:\Matt\GitHome\sql-challenge\data\salaries.csv'
DELIMITER ','
CSV HEADER;

select * from salaries;
