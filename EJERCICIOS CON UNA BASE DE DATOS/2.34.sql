---- CLASE ----- 

SELECT 
    e.emp_no, e.first_name, e.last_name, s.salary
FROM
    employees e
        INNER JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE 
	s.salary > 145000;
    



    