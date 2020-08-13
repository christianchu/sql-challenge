--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
from employees as e
left join salaries as s
on e.emp_no = s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select e.first_name,
	e.last_name,
	e.hire_date
from employees as e
where e.hire_date between '1986-01-01' and '1986-12-31';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dm.dept_no,
	dep.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
from departments as dep
left join dept_manager as dm
on dep.dept_no = dm.dept_no
left join employees as e
on dm.emp_no = e.emp_no;