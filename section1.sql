select first_name, last_name, hire_date 
from employees.employee 
order by hire_date Asc


SELECT e.first_name, e.last_name
FROM employees.department_employee de
JOIN employees.employee e ON e.id = de.employee_id
JOIN employees.department d ON de.department_id = d.id
WHERE d.dept_name = 'Sales'
ORDER BY e.last_name ASC;

select id,first_name, last_name, hire_date 
from employees.employee 
where hire_date > '2015-01-01'

select e.first_name, d.dept_name 
from employees.department_manager dm
JOIN employees.employee e ON e.id = dm.employee_id
JOIN employees.department d ON dm.department_id = d.id
order by d.dept_name 