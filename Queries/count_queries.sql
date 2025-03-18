/* Count total employees */
    select count(*) as total_no_of_employees from employees

/* Count employees in each department (count* with group by) */
    select d.dept_no, d.dept_name, count(*) as no_of_employees
    from departments as d
    join dept_emp as de on de.dept_no=d.dept_no
    group by dept_no

/* Find departments with more than 50000 employees (count* with having) */
    select d.dept_no, d.dept_name, count(*) as no_of_employees
    from departments as d
	join dept_emp as de on de.dept_no = d.dept_no
    group by d.dept_name
    having no_of_employees > 50000
    order by no_of_employees


