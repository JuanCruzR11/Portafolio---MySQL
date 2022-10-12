SELECT 
    *,avg(salary)
FROM
    salaries
GROUP BY emp_no
HAVING avg(salary) > 120000;

	
