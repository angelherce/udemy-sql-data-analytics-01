USE employees;

DROP PROCEDURE IF EXISTS emp_info;

DELIMITER $$

CREATE PROCEDURE emp_info ( IN p_first_name VARCHAR( 255 ), IN p_last_name VARCHAR( 255 ), OUT p_emp_no INT )

BEGIN
    SELECT e.emp_no
        INTO p_emp_no
        FROM employees e
        WHERE e.first_name = p_first_name
            AND e.last_name = p_last_name;
END$$

DELIMITER ;

SET @v_emp_no = 0;
CALL emp_info( 'Aruna', 'Journel', @v_emp_no );
SELECT @v_emp_no;