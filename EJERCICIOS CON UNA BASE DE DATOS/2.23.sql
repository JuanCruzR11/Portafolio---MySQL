SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;
INSERT INTO employees
 VALUES
(
	999903,
    "1977-09-14",
    "Johnathan",
    "Creek",
    "M",
    "1999-01-01"
);

SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC;
INSERT INTO titles
(
	emp_no,
    title,
    from_date
) VALUES
(
	999903,
    "Senior Engineer",
    "1997-10-01"
);


INSERT INTO dept_emp
VALUES
(
	999903,
    "d005",
    "1997-10-01",
    "9999-01-01"
);

SELECT 
    *
FROM
    dept_emp
ORDER BY emp_no DESC
LIMIT 10;
    