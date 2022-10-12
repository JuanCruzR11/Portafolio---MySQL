

SELECT 
    *
FROM
    employees
LIMIT 1000;

DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN
			SELECT * FROM employees
			LIMIT 1000;
END $$

DELIMITER ;


CALL employees.select_employees();


CALL select_employees();    
---- funciona porque ya estoy en la base de datos de employees

---- la tercer forma es tocar el rayito y me lo ejecuta en una nueva pestaña ----


---- EJERCICIO --- 

SELECT 
    ROUND(AVG(salary), 2) as average_salary_employees
FROM
    salaries;


DELIMITER $$
CREATE PROCEDURE average_salary_employees()
BEGIN
	SELECT 
		ROUND(AVG(salary),2) as average_salary_employees
	FROM
		salaries;
END $$

DELIMITER ;

CALL average_salary_employees();