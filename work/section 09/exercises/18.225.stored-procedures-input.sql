USE employees;

DROP PROCEDURE IF EXISTS emp_salary;

DELIMITER $$

CREATE PROCEDURE emp_salary( IN p_emp_no INTEGER )
BEGIN
    SELECT e.first_name, e.last_name, s.salary, s.from_date, s.to_date
        FROM employees e
        JOIN salaries s
            ON e.emp_no = s.emp_no
        WHERE e.emp_no = p_emp_no;
END$$

DELIMITER ;

CALL employees.emp_salary( 11300 );

-- -------------------------------------------------

DROP PROCEDURE IF EXISTS emp_average_salary;

DELIMITER $$

CREATE PROCEDURE emp_average_salary( IN p_emp_no INTEGER )
BEGIN
    SELECT e.first_name, e.last_name, AVG( s.salary ) AS average_salary
        FROM employees e
        JOIN salaries s
            ON e.emp_no = s.emp_no
        WHERE e.emp_no = p_emp_no
        GROUP BY e.first_name, e.last_name;
END$$

DELIMITER ;

CALL employees.emp_average_salary( 11300 );