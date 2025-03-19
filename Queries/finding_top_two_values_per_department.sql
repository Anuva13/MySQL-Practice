/* Find top two salaries per department */
    
    select s.salary, de.dept_no
    from salaries as s
    join dept_emp as de on de.emp_no = s.emp_no
    where (s.salary, de.dept_no) in
		(
		select s.salary, de.dept_no
		from salaries as s
		join dept_emp as de on de.emp_no=s.emp_no
		order by s.salary desc
		limit 2
        )
	order by de.dept_no, s.salary desc
    
    /* ALTERNATIVE */
    
(SELECT s.salary, de.dept_no
 FROM salaries AS s
 JOIN dept_emp AS de ON de.emp_no = s.emp_no
 WHERE de.dept_no = 'D001'
 ORDER BY s.salary DESC
 LIMIT 2)

UNION ALL

(SELECT s.salary, de.dept_no
 FROM salaries AS s
 JOIN dept_emp AS de ON de.emp_no = s.emp_no
 WHERE de.dept_no = 'D002'
 ORDER BY s.salary DESC
 LIMIT 2)

UNION ALL

(SELECT s.salary, de.dept_no
 FROM salaries AS s
 JOIN dept_emp AS de ON de.emp_no = s.emp_no
 WHERE de.dept_no = 'D003'
 ORDER BY s.salary DESC
 LIMIT 2)

UNION ALL

(SELECT s.salary, de.dept_no
 FROM salaries AS s
 JOIN dept_emp AS de ON de.emp_no = s.emp_no
 WHERE de.dept_no = 'D004'
 ORDER BY s.salary DESC
 LIMIT 2)

UNION ALL

(SELECT s.salary, de.dept_no
 FROM salaries AS s
 JOIN dept_emp AS de ON de.emp_no = s.emp_no
 WHERE de.dept_no = 'D005'
 ORDER BY s.salary DESC
 LIMIT 2)

UNION ALL

(SELECT s.salary, de.dept_no
 FROM salaries AS s
 JOIN dept_emp AS de ON de.emp_no = s.emp_no
 WHERE de.dept_no = 'D006'
 ORDER BY s.salary DESC
 LIMIT 2)

UNION ALL

(SELECT s.salary, de.dept_no
 FROM salaries AS s
 JOIN dept_emp AS de ON de.emp_no = s.emp_no
 WHERE de.dept_no = 'D007'
 ORDER BY s.salary DESC
 LIMIT 2)

