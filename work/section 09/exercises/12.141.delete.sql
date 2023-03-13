
USE employees;

COMMIT;

SELECT *
    FROM departments
    WHERE dept_no = 'd010';

DELETE FROM departments
    WHERE dept_no = 'd010';

SELECT *
    FROM departments
    WHERE dept_no = 'd010';

ROLLBACK;