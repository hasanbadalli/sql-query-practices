UPDATE employees.salary
SET amount = 85000
WHERE employee_id = 1001
AND to_date IS NULL;

DELETE FROM employees.employee
WHERE id = 1002;

INSERT INTO employees.department (id, dept_name)
VALUES ('d010', 'Data Science');