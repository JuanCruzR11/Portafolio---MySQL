SELECT MAX(salary) FROM t_salaries;

SELECT MIN(salary) FROM t_salaries;

DROP PROCEDURE IF EXISTS task_4;

DELIMITER $$
CREATE PROCEDURE task_4 (IN min_salary FLOAT, IN max_salary FLOAT)
BEGIN
SELECT
	e.gender,
    AVG(s.salary) as avg_salary,
    d.dept_name
FROM
	t_employees e
    JOIN
    t_salaries s ON s.emp_no = e.emp_no
    JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
	JOIN
    t_departments d ON d.dept_no =de.dept_no
WHERE salary BETWEEN min_salary AND max_salary
GROUP BY d.dept_no, e.gender;
END$$

DELIMITER ;

CALL task_4(50000,90000);
