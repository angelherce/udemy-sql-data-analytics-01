USE employees;

SELECT first_name
FROM employees
GROUP BY first_name;

SELECT DISTINCT first_name
FROM employees;

SELECT first_name, COUNT( first_name )
FROM employees
GROUP BY first_name
ORDER BY first_name DESC;