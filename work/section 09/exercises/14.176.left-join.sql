USE employees;

DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (
    emp_no INT( 11 ) NOT NULL,
    dept_no CHAR( 4 ) NULL,
    from_date DATE NOT NULL,
    to_date DATE NULL
 );


INSERT INTO dept_manager_dup
    SELECT * FROM dept_manager;

INSERT INTO dept_manager_dup ( emp_no, dept_no, from_date, to_date )
    VALUES ( 110228, 'd003', '1992-03-21', '9999-01-01' );

INSERT INTO dept_manager_dup ( emp_no, from_date )
    VALUES ( 999904, '2017-01-01' ),
           ( 999905, '2017-01-01' ),
           ( 999906, '2017-01-01' ),
           ( 999907, '2017-01-01' );

DROP TABLE IF EXISTS departments_dup;

CREATE TABLE departments_dup (
    dept_no CHAR( 4 ) NULL,
    dept_name VARCHAR( 40 ) NULL
);

INSERT INTO departments_dup ( dept_no, dept_name )
    SELECT * FROM departments;

INSERT INTO departments_dup ( dept_no, dept_name )
    VALUES ( 'd009', 'Customer Service' );

INSERT INTO departments_dup ( dept_no )
    VALUES ( 'd010' ), ( 'd011' );

SELECT * FROM dept_manager_dup ORDER BY dept_no ASC;

SELECT * FROM departments_dup ORDER BY dept_no ASC;

SELECT DISTINCT m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
    FROM dept_manager_dup m
    JOIN departments_dup d
        ON d.dept_no = m.dept_no
    ORDER BY m.dept_no;

SELECT DISTINCT m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
    FROM dept_manager_dup m
    LEFT JOIN departments_dup d
        ON d.dept_no = m.dept_no
    ORDER BY m.dept_no;