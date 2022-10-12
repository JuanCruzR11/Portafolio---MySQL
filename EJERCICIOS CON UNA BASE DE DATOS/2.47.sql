SELECT 
    *
FROM
    dept_emp;

SELECT 
    emp_no, from_date, to_date, COUNT(emp_no) AS NUM
FROM
    dept_emp
GROUP BY emp_no
HAVING NUM > 1;

CREATE OR REPLACE VIEW v_dept_emp_lastest_data AS
	SELECT
		emp_no, MAX(from_date) AS from_date, MAX(to_date) as to_date
	FROM
		dept_emp
	GROUP BY emp_no;
    
SELECT 
    emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
FROM
    dept_emp
GROUP BY emp_no;


SELECT 
	ROUND(AVG(s.salary),2) as average_salary 
FROM
	salaries s
	JOIN
    dept_manager dm on s.emp_no = dm.emp_no;
    
v_average_salary_managersCREATE VIEW v_average_salary_managers AS
	SELECT 
	ROUND(AVG(s.salary),2) as average_salary 
FROM
	salaries s
	JOIN
    dept_manager dm on s.emp_no = dm.emp_no;
    
    
    
