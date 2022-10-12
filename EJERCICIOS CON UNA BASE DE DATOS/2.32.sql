
SELECT 
    e.emp_no, e.first_name, e.last_name, j.dept_no,  J.from_date
FROM
    employees e
        LEFT JOIN
    dept_manager j ON e.emp_no = j.emp_no
WHERE e.last_name = "Markovitch"
ORDER BY j.dept_no DESC, e.emp_no ;