USE employees;

SELECT *
FROM employees
WHERE hire_date >= '2000-01-01';

SELECT *
FROM employees
HAVING hire_date >= '2000-01-01';

# MAL
SELECT first_name, COUNT( first_name ) AS names_count
FROM employees
WHERE COUNT( first_name ) > 250
GROUP BY first_name
ORDER BY first_name;

# MAL
SELECT first_name, COUNT( first_name ) AS names_count
FROM employees
WHERE names_count > 250
GROUP BY first_name
ORDER BY first_name;

# BIEN
SELECT first_name, COUNT( first_name ) AS names_count
FROM employees
GROUP BY first_name
HAVING COUNT( first_name ) > 250
ORDER BY first_name;

# BIEN
SELECT first_name, COUNT( first_name ) AS names_count
FROM employees
GROUP BY first_name
HAVING names_count > 250
ORDER BY first_name;