/* Find employees whose salary is higher than the average salary */
select e.emp_no, concat(e.first_name, " ", e.last_name) as full_name, s.salary
from employees as e
join salaries as s on s.emp_no=e.emp_no
where s.salary > (select avg(salary) from salaries)
order by s.salary asc

/* Find the department with the highest average salary */

select d.dept_name, avg(s.salary)
from departments as d
join dept_emp as de on d.dept_no=de.dept_no
join salaries as s on s.emp_no=de.emp_no
group by d.dept_name
order by avg(s.salary) desc
limit 1

--------------

SELECT dept_name 
FROM departments
WHERE dept_no = (
    SELECT dept_no 
    FROM dept_emp AS de
    JOIN salaries AS s ON de.emp_no = s.emp_no
    GROUP BY dept_no
    ORDER BY AVG(s.salary) DESC
    LIMIT 1)