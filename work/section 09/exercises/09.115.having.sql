USE employees;

SELECT emp_no, AVG( salary ) AS salary_avg
FROM salaries
GROUP BY emp_no
HAVING salary_avg > 120000;