SELECT 
    e.gender,
    ROUND(AVG(s.salary),2) AS salary,
    d.dept_name,
    YEAR(de.from_date) as calendar_year
FROM
	t_employees e 
    JOIN
	t_salaries s ON e.emp_no = s.emp_no
    JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
    JOIN
    t_departments d ON d.dept_no = de.dept_no
GROUP BY d.dept_no,e.gender, calendar_year
HAVING calendar_year <= 2002
ORDER BY d.dept_no;

