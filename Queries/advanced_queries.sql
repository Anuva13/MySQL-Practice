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

/* Find the employees with second highest and third highest pay */
    select concat(e.first_name, " ", e.last_name) as emp_name, s.salary
    from employees as e
    join salaries as s on s.emp_no = e.emp_no
    where
    s.salary < (select salary from salaries order by salary desc limit 1)
    order by s.salary desc limit 2
    
/* Find the employees with the same name */
    select e.first_name, e.last_name, count(*) as name_count
    from employees as e
    group by e.first_name, e.last_name
    having name_count>0
    order by name_count desc
    
/* Find the employees and their manager names */
    select 
    e.emp_no AS employee_id,
    e.first_name AS employee_name,
    m.emp_no AS manager_id,
    m.first_name AS manager_name
    from employees e
    join dept_emp de ON e.emp_no = de.emp_no
    join dept_manager dm ON de.dept_no = dm.dept_no
    join employees m ON dm.emp_no = m.emp_no

/* Count employees in each department (count* with group by) */
    select d.dept_no, d.dept_name, count(*) as no_of_employees
    from departments as d
    join dept_emp as de on de.dept_no=d.dept_no
    group by dept_no

