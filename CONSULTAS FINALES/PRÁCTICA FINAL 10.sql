

DELIMITER $$
CREATE FUNCTION f_salary (p_emp_no INTEGER,p_min_max VARCHAR(10)) RETURNS INTEGER
DETERMINISTIC
BEGIN
	DECLARE f_salary INTEGER;
    
SELECT
	CASE
		WHEN p_min_max = "max" THEN MAX(s.salary)
        WHEN p_min_max = "min" THEN MIN(s.salary)
        ELSE MAX(s.salary) - MIN(s.salary)
	END AS salary_info
INTO
	f_salary
FROM
	employees e
    JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
	e.emp_no = p_emp_no;
RETURN f_salary;
END$$

DELIMITER ;

SELECT f_salary(11356,"min");
SELECT f_salary(11356,"max");
SELECT f_salary(11356,"rng");


DROP FUNCTION f_salary;



SELECT * FROM salaries
WHERE emp_no = 11356
ORDER BY salary ASC;
