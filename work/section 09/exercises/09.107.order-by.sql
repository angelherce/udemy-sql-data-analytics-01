USE employees;

SELECT *
FROM employees
ORDER BY first_name;

SELECT *
FROM employees
ORDER BY first_name ASC;

SELECT *
FROM employees
ORDER BY first_name DESC;

SELECT *
FROM employees
ORDER BY emp_no ASC;

SELECT *
FROM employees
ORDER BY emp_no DESC;

SELECT *
FROM employees
ORDER BY first_name, last_name ASC;

SELECT *
FROM employees
ORDER BY first_name DESC, last_name ASC;