USE employees;

SELECT e.first_name, e.last_name
    FROM employees e
    WHERE EXISTS (
        SELECT *
            FROM dept_manager dm
            WHERE dm.emp_no = e.emp_no
    );

SELECT e.first_name, e.last_name
    FROM employees e
    WHERE EXISTS (
        SELECT *
            FROM dept_manager dm
            WHERE dm.emp_no = e.emp_no
            ORDER BY dm.emp_no
    );

SELECT e.first_name, e.last_name
    FROM employees e
    WHERE EXISTS (
        SELECT *
            FROM dept_manager dm
            WHERE dm.emp_no = e.emp_no
    )
    ORDER BY e.emp_no;