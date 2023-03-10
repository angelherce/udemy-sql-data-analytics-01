USE employees;

SELECT *
    FROM departments
    WHERE dept_name = 'Business Analysis';

UPDATE departments
    SET dept_name = 'Data Analysis'
    WHERE dept_name = 'Business Analysis';

SELECT *
    FROM departments
    WHERE dept_name = 'Data Analysis';

COMMIT;