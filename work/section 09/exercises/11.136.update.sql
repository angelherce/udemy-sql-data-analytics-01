USE employees;

SELECT *
    FROM departments_dup
    ORDER BY dept_no;

INSERT INTO departments_dup ( dept_no, dept_name ) VALUES
    ( 'd001', 'Department 01' ),
    ( 'd002', 'Department 02' ),
    ( 'd003', 'Department 03' ),
    ( 'd004', 'Department 04' ),
    ( 'd005', 'Department 05' ),
    ( 'd006', 'Department 06' ),
    ( 'd007', 'Department 07' ),
    ( 'd008', 'Department 08' ),
    ( 'd009', 'Department 09' ),
    ( 'd010', 'Department 10' );

COMMIT;

UPDATE departments_dup
    SET dept_name = 'Quality Control';

SELECT *
    FROM departments_dup
    ORDER BY dept_no;

ROLLBACK;

SELECT *
    FROM departments_dup
    ORDER BY dept_no;

TRUNCATE TABLE departments_dup;