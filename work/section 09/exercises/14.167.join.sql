USE employees;

ALTER TABLE departments_dup
    DROP COLUMN dept_manager,
    CHANGE COLUMN dept_no dept_no CHAR( 4 ) NULL,
    CHANGE COLUMN dept_name dept_name VARCHAR( 40 ) NULL;

DROP TABLE IF EXISTS departments_dup;

CREATE TABLE departments_dup (
    dept_no CHAR(4) NULL,
    dept_name VARCHAR(40) NULL
);

INSERT INTO departments_dup ( dept_no, dept_name )
    SELECT * FROM departments;

INSERT INTO departments_dup ( dept_name )
    VALUES ( 'Public Relations' );

DELETE FROM departments_dup
    WHERE dept_no = 'd002';

INSERT INTO departments_dup ( dept_no )
    VALUES ( 'd010' ), ( 'd011' );

SELECT * FROM departments_dup;