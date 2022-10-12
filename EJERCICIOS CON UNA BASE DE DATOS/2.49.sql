DELIMITER $$

CREATE PROCEDURE emp_avg_salary (in p_emp_no INTEGER)
BEGIN
	SELECT 
		e.first_name, e.last_name, AVG(s.salary)
	FROM
		employees e
			JOIN
		salaries s ON e.emp_no  = s.emp_no
	WHERE
		e.emp_no = p_emp_no;
END$$
DELIMITER ;


CALL emp_avg_salary(11300);
