use employees;

SELECT 
    e.gender, AVG(s.salary) AS avg_salary, d.dept_name
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
        JOIN
    dept_emp de ON de.emp_no = e.emp_no
        JOIN
    departments d ON d.dept_no = de.dept_no
GROUP BY e.gender, d.dept_name
ORDER BY de.dept_no;
