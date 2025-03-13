/* List employees along with the department they work in */
select e.emp_no, e.first_name, e.last_name, d.dept_name
from employees as e
join dept_emp as de on e.emp_no=de.emp_no
join departments as d on d.dept_no=de.dept_no
order by e.emp_no asc

/* Find the manager for each department */
select e.emp_no as emp_id , CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
from employees as e
join dept_manager as dm on e.emp_no=dm.emp_no
join departments as d on d.dept_no=dm.dept_no
