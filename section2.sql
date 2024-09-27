select d.dept_name, AVG(s.amount) as avg_salary 
from employees.department_employee de
join employees.department d on d.id = de.department_id
join employees.salary s on de.employee_id = s.employee_id
group by d.dept_name
order by avg_salary DESC


select d.dept_name, count(de.employee_id) as employee_count
from employees.department d
JOIN employees.department_employee de ON d.id = de.department_id
GROUP BY d.dept_name;

select e.id, e.first_name, e.last_name, s.amount
from employees.employee e
join employees.salary s on e.id = s.employee_id
where s.amount = (select MAX(amount) from employees.salary)

select sum(s.amount) as total_engineering_salary
from employees.department_employee de
join employees.department d on d.id = de.department_id
join employees.salary s on s.employee_id = de.employee_id
where d.dept_name = 'Development'



