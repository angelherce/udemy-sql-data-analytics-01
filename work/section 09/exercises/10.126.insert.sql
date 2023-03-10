USE employees;

SELECT *
FROM titles
LIMIT 1;

INSERT INTO titles ( emp_no, title, from_date )
    VALUES ( 999903, 'Senior Engineer', '1997-10-1' );

SELECT *
FROM titles
ORDER BY emp_no DESC;