/* Getting the names and salaries of all employees */
select  e.first_name, e.last_name, s.salary, s.from_date, s.to_date
from 
salaries as s join employees as e
where e.emp_no=s.emp_no

/* Find employees with a specific title (e.g., 'Engineer') */
select
e.emp_no, e.first_name, e.last_name, e.birth_date, e.gender, e.hire_date, t.title, t.from_date, t.to_date
from employees as e join titles as t
where
e.emp_no = t.emp_no
and t.title = 'Engineer'

/* List employees whose salary is greater than a specific amount 50,000 from 2002-06-22 till 9999-01-01 */
select
e.emp_no, e.first_name, e.last_name, s.salary
from 
salaries as s join employees as e
where e.emp_no=s.emp_no
and s.salary>50000 and s.from_date = '2002-06-22' and s.to_date = '9999-01-01'