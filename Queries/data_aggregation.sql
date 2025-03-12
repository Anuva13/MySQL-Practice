/* Find the average salary of employees in each department */
select d.dept_name, avg(s.salary) as avg_salary
from departments as d 
join dept_emp as de on d.dept_no=de.dept_no
join salaries as s on s.emp_no=de.emp_no
group by d.dept_name

/* Count the number of employees in each department */
select d.dept_name, count(e.emp_no) as no_of_emp
from department as d
join dept_emp as de on d.dept_no=de.dept_no
join employees as e on e.emp_no=de.emp_no
group by d.dept_name