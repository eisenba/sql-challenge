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
	
select
	dept_manager.dept_no as "Dept Num",
	departments.dept_name as "Dept Name",
	dept_manager.emp_no as "Employee Num",
	employees.last_name as "Last Name",
	employees.first_name as "First Name"	
from
	dept_manager
INNER JOIN departments
on departments.dept_no = dept_manager.dept_no
INNER JOIN employees
on employees.emp_no = dept_manager.emp_no
ORDER BY employees.last_name
;