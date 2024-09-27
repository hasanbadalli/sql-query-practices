SELECT e.id, e.first_name, e.last_name, COUNT(dm.department_id) AS department_count
FROM employees.employee e
JOIN employees.department_manager dm ON e.id = dm.employee_id
GROUP BY e.id, e.first_name, e.last_name
HAVING COUNT(dm.department_id) >= 1;

SELECT e.id, e.first_name, e.last_name, 
       EXTRACT(YEAR FROM AGE(CURRENT_DATE, e.hire_date)) AS years_employed
FROM employees.employee e
ORDER BY years_employed DESC;

SELECT e.id, e.first_name, e.last_name, COUNT(s.amount) AS salary_increase_count
FROM employees.employee e
JOIN employees.salary s ON e.id = s.employee_id
GROUP BY e.id, e.first_name, e.last_name
HAVING COUNT(s.amount) > 3;
