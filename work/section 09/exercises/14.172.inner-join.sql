USE employees;

SELECT * FROM employees ORDER BY emp_no;

SELECT * FROM dept_manager ORDER BY dept_no;

SELECT  e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
    FROM employees e
    JOIN  dept_manager  dm
        ON dm.emp_no = e.emp_no;