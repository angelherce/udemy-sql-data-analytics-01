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
    dept_name,
    COALESCE( 'department manager name' ) AS fake_col
FROM
    departments_dup;