USE employees;

SELECT *
FROM employees
ORDER BY emp_no DESC
LIMIT 10;

INSERT INTO employees ( emp_no, birth_date, first_name, last_name, gender, hire_date )
    VALUES ( 999902, '1989-08-05', 'John', 'Smith', 'M', '2010-05-21' );

INSERT INTO employees (  birth_date, emp_no, first_name, last_name, gender, hire_date )
    VALUES ( '1973-03-06', 999903, 'Patricia', 'Lawrence', 'F', '2005-01-01' );

# MAL
INSERT INTO employees VALUES
    ( 999904, '1977-09-04', 'Johnathan', 'Creek' );

# BIEN
INSERT INTO employees VALUES
    ( 999904, '1977-09-04', 'Johnathan', 'Creek', 'M', '1999-01-01' );

SELECT *
FROM employees
ORDER BY emp_no DESC
LIMIT 10;