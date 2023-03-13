USE employees;

DROP PROCEDURE IF EXISTS emp_average_salary_out;

DELIMITER $$

CREATE PROCEDURE emp_average_salary_out( IN p_emp_no INTEGER, OUT p_avg_salary DECIMAL( 10, 2 ) )
BEGIN
    SELECT AVG( s.salary ) AS average_salary
        INTO p_avg_salary
        FROM employees e
        JOIN salaries s
            ON e.emp_no = s.emp_no
        WHERE e.emp_no = p_emp_no;
END$$

DELIMITER ;

SET @p_avg_salary = 0;
CALL employees.emp_average_salary_out( 11300, @p_avg_salary );
SELECT @p_avg_salary;