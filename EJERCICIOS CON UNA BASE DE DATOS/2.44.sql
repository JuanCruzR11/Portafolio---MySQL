SELECT 
    *
FROM
    employees e
WHERE
    EXISTS( SELECT 
            emp_no
        FROM
            titles t
        WHERE
            t.emp_no = e.emp_no
                AND title = 'Assistant Engineer');
    
    
SELECT 
    emp_no
FROM
    titles 
WHERE
    title = 'Assistant Engineer';