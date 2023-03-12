USE employees;

SELECT e.emp_no, e.first_name, e.last_name, s.salary
    FROM employees e
    JOIN salaries s
        ON e.emp_no = s.emp_no
    WHERE s.salary > 145000
    ORDER BY e.emp_no;

SELECT e.first_name, e.last_name, s.salary
    FROM employees e
    JOIN salaries s
        ON e.emp_no = s.emp_no
    WHERE s.salary > 145000
    ORDER BY e.emp_no;