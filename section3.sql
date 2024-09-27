select e.id, e.first_name, e.last_name
from employees.department_employee de
join employees.employee e on e.id = de.employee_id
Group by e.id, e.first_name, e.last_name
Having Count(de.department_id)>1

select e.id, e.first_name, e.last_name, ti.title
from employees.title ti
left join employees.employee e on e.id = ti.employee_id
where ti.to_date is null

select e.id, e.first_name, e.last_name, count(ti.title) as co
from employees.title ti
join employees.employee e on e.id = ti.employee_id
group by e.id, e.first_name, e.last_name
having count(ti.employee_id) > 1
order by co

select d.dept_name
from employees.department d
left join employees.department_manager dm on d.id = dm.department_id
where dm.employee_id is null