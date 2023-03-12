USE employees;

SELECT e.emp_no, e.first_name, e.last_name, dm.dept_no, dm.from_date
    FROM employees e
    LEFT JOIN dept_manager dm
        ON dm.emp_no = e.emp_no
    WHERE e.last_name = 'Markovitch'
    ORDER BY dm.dept_no DESC, e.emp_no;