COMMIT;

DELIMITER $$

CREATE TRIGGER before_hire_date_insert
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
	IF NEW.hire_date > date_format(sysdate(), '%Y-%m-%d') THEN
    SET NEW.hire_date = date_format(sysdate(), '%Y-%m-%d');
    END IF;
END $$

DELIMITER ;

DROP TRIGGER IF EXISTS before_hire_date_insert;
    
INSERT employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2025-01-01');
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;


-- SE PODRIA HABER CON UNA VARIABLE EN DATEFORMAT --

