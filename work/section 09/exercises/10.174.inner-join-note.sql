USE employees;

SELECT m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
    FROM dept_manager_dup m
    INNER JOIN departments_dup d
        ON d.dept_no = m.dept_no
    ORDER BY m.dept_no;

 SELECT m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
     FROM dept_manager_dup m
     JOIN departments_dup d
         ON d.dept_no = m.dept_no
     ORDER BY m.dept_no;