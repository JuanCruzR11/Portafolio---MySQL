SELECT *
FROM salaries;

SELECT 
COUNT(salary) as contracts
FROM
salaries
WHERE DATEDIFF(to_date, from_date) > 365
	AND salary >= 100000;
