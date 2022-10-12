ALTER TABLE departments_dup

DROP COLUMN dept_manager;

ALTER TABLE departments_dup

CHANGE COLUMN dept_no dept_no CHAR(4) NULL;

ALTER TABLE departments_dup

CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

INSERT INTO departments_dup
(
    dept_no,
    dept_name
)SELECT * FROM departments;

INSERT INTO departments_dup (dept_name)
values ("Public Relations");

DELETE FROM departments_dup
WHERE
	dept_no = "d002";
    
INSERT INTO departments_dup (dept_no) 
VALUES ("d010");
INSERT INTO departments_dup (dept_no) 
VALUES ("d011");
SELECT 
    *
FROM
    departments_dup;
