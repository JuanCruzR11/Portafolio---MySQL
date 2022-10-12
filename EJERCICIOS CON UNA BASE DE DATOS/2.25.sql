SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

COMMIT;

UPDATE departments_dup
SET 
	dept_no = "d011",
    dept_name = "Quality Control";
    
ROLLBACK;
COMMIT;

UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_no = "d010";
