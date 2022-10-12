SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

SELECT 
    m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;


SELECT 
    e.emp_no, e.first_name, e.last_name, e.hire_date, j.dept_no
FROM
    employees e
        INNER JOIN
    dept_manager j ON e.emp_no = j.emp_no
ORDER BY e.emp_no;
