select 
	employees.emp_no as "Employee Num", 
	last_name as "Last Name",
	first_name as "First Name", 
	sex as Sex,
	salaries.salary as Salary

from 
	employees
INNER JOIN salaries
on salaries.emp_no = employees.emp_no
ORDER BY employees.last_name
;

select
	first_name as "First Name",
	last_name as "Last Name",
	hire_date as "Hire Date"	
from
	employees
WHERE
	EXTRACT(year FROM "hire_date") = 1986;