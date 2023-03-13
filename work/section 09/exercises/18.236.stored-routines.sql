USE employees;

DROP FUNCTION IF EXISTS f_emp_average_salary;

DELIMITER $$

CREATE FUNCTION f_emp_average_salary ( p_emp_no INTEGER ) RETURNS DECIMAL( 10, 2 ) DETERMINISTIC NO SQL READS SQL DATA

BEGIN
    DECLARE v_avg_salary DECIMAL( 10, 2 );

    SELECT AVG( s.salary )
        INTO v_avg_salary
        FROM employees e
        JOIN salaries s
            ON e.emp_no = s.emp_no
        WHERE e.emp_no = p_emp_no;

    RETURN v_avg_salary;
END$$

DELIMITER ;

SET @v_emp_no = 11300;
SELECT emp_no, first_name, last_name, f_emp_average_salary( @v_emp_no ) AS avg_salary
    FROM employees
    WHERE emp_no = @v_emp_no;