SELECT
	e.emp_no,
    (SELECT
		MIN(dept_no)
        FROM
		dept_emp de
        WHERE
        e.emp_no = de.emp_no) dept_no,
    CASE
		WHEN e.emp_no <= 10020 THEN "110022"
        WHEN e.emp_no >= 10021 AND e.emp_no <= 10040 THEN "110039"
		END AS manager
	FROM
	employees e
	JOIN
    dept_emp de ON e.emp_no = de.emp_no
    JOIN
    departments d ON d.dept_no = de.dept_no
WHERE
	e.emp_no <= 10040
GROUP BY emp_no
ORDER BY emp_no;