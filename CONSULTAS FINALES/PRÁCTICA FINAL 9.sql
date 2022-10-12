DELIMITER $$
CREATE FUNCTION f_max_salary (p_emp_no INTEGER) RETURNS INTEGER
DETERMINISTIC
BEGIN
	DECLARE f_max_salary INTEGER;
    
SELECT
	MAX(salary)
INTO
	f_max_salary
FROM
	salaries
WHERE
	emp_no = p_emp_no;
RETURN f_max_salary;
END$$

DELIMITER ;

SELECT f_max_salary(11356);
    
DROP FUNCTION f_max_salary;


DELIMITER $$
CREATE FUNCTION f_min_salary (p_emp_no INTEGER) RETURNS INTEGER
DETERMINISTIC
BEGIN
	DECLARE f_min_salary INTEGER;
    
SELECT
	MIN(salary)
INTO
	f_min_salary
FROM
	employees e
    JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
	e.emp_no = p_emp_no;
RETURN f_min_salary;
END$$

DELIMITER ;

SELECT f_min_salary(11356);

DROP FUNCTION f_min_salary;



SELECT * FROM salaries
WHERE emp_no = 11356
ORDER BY salary ASC;
