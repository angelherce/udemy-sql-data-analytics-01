USE employees;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01';

SELECT *
FROM employees
WHERE hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';