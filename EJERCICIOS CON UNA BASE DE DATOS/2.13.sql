SELECT 
	salary, count(emp_no) AS emps_with_same_salary
FROM
	salaries
where 
	salary > "80000"
	group by salary
    order by salary;
    