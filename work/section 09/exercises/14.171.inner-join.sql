USE employees;

SELECT * FROM dept_manager_dup ORDER BY dept_no;

SELECT * FROM departments_dup ORDER BY dept_no;

SELECT m.dept_no, m.emp_no, d.dept_name
    FROM dept_manager_dup m
    INNER JOIN departments_dup d
        ON d.dept_no = m.dept_no
    ORDER BY m.dept_no;