COMMIT;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;


DELETE FROM employees 
WHERE
    emp_no = 999903;
    
ROLLBACK;

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;

SELECT 
    *
FROM
	departments_dup
ORDER BY dept_no;
commit;

DELETE FROM departments_dup;
ROLLBACK;

COMMIT;

SELECT 
    *
FROM
	departments
ORDER BY dept_no;

DELETE FROM departments
WHERE dept_no = "d010";
