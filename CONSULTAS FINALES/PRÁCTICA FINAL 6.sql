DELIMITER $$

CREATE PROCEDURE emp_no_dept (IN p_emp_no INTEGER)
BEGIN
	SELECT
		e.emp_no,d.dept_no, d.dept_name
	FROM
		employees e
        JOIN
        dept_emp de ON e.emp_no = de.emp_no
        JOIN
        departments d ON d.dept_no = de.dept_no
	WHERE p_emp_no = e.emp_no 
		AND de.from_date = (SELECT
            MAX(from_date)
        FROM
            dept_emp
        WHERE
            emp_no = p_emp_no);
END$$
DELIMITER ;

CALL emp_no_dept (10010); 

DROP PROCEDURE IF EXISTS emp_no_dept;