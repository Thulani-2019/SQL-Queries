-- CTEs

with CTE_Example as
(
select gender,avg(salary) avg_salary,max(salary) max_salary, min(salary) min_salary, count(salary)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id =sal.employee_id
    group by gender
)
select avg(min_salary)
from CTE_Example;











with CTE_Example as
(
select gender, employee_id ,birth_date
from employee_demographics dem
where birth_date > '1985-01-01'
),
CTE_Example2 as
(
select employee_id, salary
from employee_salary
where salary > 50000
)
select *
from CTE_Example
join CTE_Example2
	on CTE_Example.employee_id = CTE_Example2.employee_id
;