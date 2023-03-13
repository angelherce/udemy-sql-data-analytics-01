USE employees;

DROP TABLE departments_dup;

# NO SOPORTADO EN MYSQL
-- SELECT * INTO departments_dup
--     FROM departments;

CREATE TABLE departments_dup
    AS SELECT * FROM departments;

ALTER TABLE departments_dup
    ADD dept_manager INT NULL,
    CHANGE dept_name dept_name VARCHAR( 255 ) NULL;

INSERT INTO departments_dup ( dept_no, dept_name ) VALUES
    ( 'd011', null ),
    ( 'd012', null );

SELECT *
    FROM departments_dup
    ORDER BY dept_no;

SELECT
    dept_no,
    IFNULL( dept_name, 'Department name not provided' ) AS dept_name
FROM
    departments_dup;

SELECT
    dept_no,
    COALESCE( dept_name, 'Department name not provided' ) AS dept_name
FROM
    departments_dup;

SELECT
    dept_no,
    dept_name,
    COALESCE( dept_manager, dept_name, 'N/A' ) AS dept_manager
FROM
    departments_dup;

SELECT
    dept_no,
    COALESCE( dept_name, 'Department name not provided' ) AS dept_name,
    COALESCE( dept_manager, dept_name, 'N/A' ) AS dept_manager
FROM
    departments_dup;