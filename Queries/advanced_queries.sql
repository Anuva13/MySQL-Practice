/* Find the top 5 highest-paid employees */
    select e.emp_no, concat(e.first_name, " ", e.last_name) as emp_name, s.salary
    from employees as e
    join salaries as s on e.emp_no = s.emp_no
    order by s.salary desc
    limit 5
    
/* Get employees who hold multiple titles */
    select e.emp_no, concat(e.first_name, " ", e.last_name) as emp_name, t.title
    from employees as e
    join titles as t on e.emp_no = t.emp_no
    where
    e.emp_no in (select emp_no from titles group by emp_no having count(title)>1)