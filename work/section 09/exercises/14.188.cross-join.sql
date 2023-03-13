USE employees;

SELECT dm.*, d.*
    FROM dept_manager dm
    CROSS JOIN departments d
    ORDER BY dm.emp_no, d.dept_no;

SELECT dm.*, d.*
    FROM dept_manager dm, departments d
    ORDER BY dm.emp_no, d.dept_no;

SELECT dm.*, d.*
    FROM dept_manager dm
    JOIN departments d
    ORDER BY dm.emp_no, d.dept_no;

SELECT dm.*, d.*
    FROM dept_manager dm
    CROSS JOIN departments d
    WHERE dm.dept_no <> d.dept_no
    ORDER BY dm.emp_no, d.dept_no;

SELECT e.*, dm.*, d.*
    FROM dept_manager dm
    CROSS JOIN departments d
    JOIN employees e
        ON dm.emp_no = e.emp_no
    ORDER BY dm.emp_no, d.dept_no;

SELECT e.first_name, e.last_name, d.dept_name
    FROM dept_manager dm
    JOIN departments d
        ON dm.dept_no = d.dept_no
    JOIN employees e
        ON dm.emp_no = e.emp_no
    ORDER BY dm.emp_no, d.dept_no;