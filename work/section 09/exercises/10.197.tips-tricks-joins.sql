USE employees;

SELECT d.dept_name, AVG( s.salary ) AS average_salary
    FROM departments d
    JOIN dept_manager dm
        ON d.dept_no = dm.dept_no
    JOIN salaries s
        ON dm.emp_no = s.emp_no
    GROUP BY d.dept_name
    ORDER BY dm.dept_no;

SELECT d.dept_name, AVG( s.salary ) AS average_salary
    FROM departments d
    JOIN dept_manager dm
        ON d.dept_no = dm.dept_no
    JOIN salaries s
        ON dm.emp_no = s.emp_no
    GROUP BY d.dept_name
    ORDER BY average_salary;

SELECT d.dept_name, AVG( s.salary ) AS average_salary
    FROM departments d
    JOIN dept_manager dm
        ON d.dept_no = dm.dept_no
    JOIN salaries s
        ON dm.emp_no = s.emp_no
    GROUP BY d.dept_name
    HAVING average_salary > 60000
    ORDER BY average_salary;