USE employees;

SELECT e.first_name, e.last_name, e.hire_date, dm.from_date, d.dept_name
    FROM employees e
    JOIN dept_manager dm
        ON e.emp_no = dm.emp_no
    JOIN departments d
        ON dm.dept_no = d.dept_no;

SELECT e.first_name, e.last_name, e.hire_date, dm.from_date, d.dept_name
    FROM departments d
    JOIN dept_manager dm
        ON d.dept_no = dm.dept_no
    JOIN employees e
        ON dm.emp_no = e.emp_no;

SELECT e.first_name, e.last_name, e.hire_date, dm.from_date, d.dept_name
    FROM departments d
    RIGHT JOIN dept_manager dm
        ON d.dept_no = dm.dept_no
    JOIN employees e
        ON dm.emp_no = e.emp_no;

SELECT e.first_name, e.last_name, e.hire_date, dm.from_date, d.dept_name
    FROM departments d
    JOIN dept_manager dm
        ON d.dept_no = dm.dept_no
    RIGHT JOIN employees e
        ON dm.emp_no = e.emp_no;

