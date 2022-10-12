DELIMITER $$
CREATE PROCEDURE emp_avg_salary_out(IN p_emp_no INTEGER, out p_avg_salary DECIMAL(10,2))
BEGIN
	SELECT 
		AVG(s.salary)
	INTO p_avg_salary FROM
			employees e
				JOIN
			salaries s ON e.emp_no = s.emp_no
	WHERE
		e.emp_no = p_emp_no;
	END$$
    
    DELIMITER ;emp_avg_salary_out
    
DELIMITER $$
CREATE PROCEDURE emp_info ( IN p_first_name VARCHAR(255),IN p_last_name VARCHAR(255), out p_emp_no INTEGER)
BEGIN
	SELECT 
		emp_no
	INTO p_emp_no FROM
    employees
WHERE
	first_name = p_first_name AND
    last_name = p_last_name;
END $$

DELIMITER ; 

