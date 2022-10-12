---- JOIN ----- 

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

--- SELECT ----

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m,
    departments_dup d
WHERE
    m.dept_no = d.dept_no
ORDER BY m.dept_no;


---- EJERCICIO ---- 
SELECT
	e.emp_no, e.first_name, e.last_name, e.hire_date, g.dept_no
from
	employees e,
    dept_manager_dup g
WHERE
	e.emp_no = g.emp_no;
    