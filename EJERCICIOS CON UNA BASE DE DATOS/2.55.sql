DELIMITER $$
CREATE FUNCTION emp_info (p_first_name VARCHAR(255),p_last_name VARCHAR(255)) RETURNS DECIMAL (10,2)
DETERMINISTIC NO SQL READS SQL DATA
BEGIN

DECLARE v_salary DECIMAL (10,2);
DECLARE v_max_from_date DATE;
SELECT
	MAX(from_date)
INTO v_max_from_date FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
WHERE
	e.first_name = p_first_name 
	AND e.last_name = p_last_name;

SELECT
	s.salary
INTO v_salary FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
WHERE
	e.first_name = p_first_name 
	AND e.last_name = p_last_name
    AND s.from_date = v_max_from_date;
RETURN v_salary;
END $$

DELIMITER ;

