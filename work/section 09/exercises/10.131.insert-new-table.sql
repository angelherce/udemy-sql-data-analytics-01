USE employees;

INSERT INTO departments ( dept_no, dept_name )
    VALUES ( 'd010', 'Business Analysis' );

SELECT *
FROM departments
ORDER BY dept_no desc;