SELECT 
    *
FROM
    dept_manager;
 ---- EN LA TABLA DE MANAGERS HAY 24 EMPLEADOS ---
 
 
SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            dm.emp_no
        FROM
            dept_manager dm);


 SELECT 
    dm.emp_no
FROM
    dept_manager dm;
		
--- lo que quiero seleccionar esta es nombre y apellido, por eso esta primero ----
---- pero quiero que sea de los empleados manager, por eso pongo como condicion ---
---- en el where que el numero de empleado este en la lista de numeros de empleados de la tabla de manager ---
---- y para indicar que es de una tabla de manager lo hago con el select ----
