SELECT
	e.emp_no,
    e.first_name,
    e.last_name,
    CASE
		WHEN dm.emp_no IS NOT NULL THEN "Manager"
        ELSE "Employee"
	END AS is_manager
FROM
	employees e
		LEFT JOIN
	dept_manager dm ON dm.emp_no = e.emp_no
WHERE
	e.emp_no > 109990;
    
    
SELECT 
	dm.emp_no,
    e.first_name,
    e.last_name,
    MAX(s.salary) - MIN(s.salary) AS salary_difference,
    CASE
		WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN "more than 30000" 
        WHEN MAX(s.salary) - MIN(s.salary) BETWEEN 20000 AND 30000 THEN "more than 20000 but less than 30000"
        ELSE "lees than 20000"
	END AS salary_increase
FROM
	dept_manager dm
		JOIN
	employees e ON e.emp_no = dm.emp_no
		JOIN
	salaries s on s.emp_no = dm.emp_no
GROUP BY s.emp_no;



SELECT
	e.emp_no,
    e.first_name,
    e.last_name,
    CASE
		WHEN de.to_date > sysdate() THEN "Is still employed"
        ELSE "Not an employee anymore"
	END AS current_employee
FROM
	employees e
		LEFT JOIN
	dept_emp de ON de.emp_no = e.emp_no
ORDER BY e.emp_no ASC
LIMIT 100;

    



