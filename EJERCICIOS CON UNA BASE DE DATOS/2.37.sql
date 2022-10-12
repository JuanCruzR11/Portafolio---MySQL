SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE e.emp_no < 10011
ORDER BY  d.dept_name,e.emp_no;

---- LOS PRIMEROS 10 EMPLEADOS de cada departamento----
---- como los empleados empiezan por 10000 pongo como condicion menores a 10011 ----
