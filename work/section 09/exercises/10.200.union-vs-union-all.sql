USE employees;

DROP TABLE IF EXISTS employees_dup;

CREATE TABLE employees_dup(
    emp_no INT( 11 ) NULL,
    birth_date DATE NULL,
    first_name VARCHAR( 14 ) NULL,
    last_name VARCHAR( 16 ) NULL,
    gender ENUM( 'M', 'F' ) NULL,
    hire_date DATE NULL
);

INSERT INTO employees_dup
    SELECT e.*
        FROM employees e
        LIMIT 20;

SELECT * FROM employees_dup;

INSERT INTO employees_dup VALUES
    ( '10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26' );

SELECT e.emp_no, e.first_name, e.last_name, NULL AS dept_no, NULL AS from_date
    FROM employees_dup e
    WHERE e.emp_no = 10001
UNION ALL
SELECT NULL AS emp_no, NULL AS first_name, NULL AS last_name, m.dept_no, m.from_date
    FROM dept_manager m;

SELECT e.emp_no, e.first_name, e.last_name, NULL AS dept_no, NULL AS from_date
    FROM employees_dup e
    WHERE e.emp_no = 10001
UNION
SELECT NULL AS emp_no, NULL AS first_name, NULL AS last_name, m.dept_no, m.from_date
    FROM dept_manager m;