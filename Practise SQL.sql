select first_name ,last_name,age
from employee_demographics
order by age asc
limit 5;

-- question 2

select occupation,
avg(salary) as avg_salary
from employee_salary
group by occupation;
;

-- question 3
select occupation,
avg(salary) as avg_salary
from employee_salary
group by occupation
having	 avg(salary) > 60000;

-- question 4
select dem.employee_id,dem.first_name, dem.last_name , occupation,department_name
from employee_demographics dem
inner join employee_salary sal
inner join parks_departments parks
on dem.employee_id = sal.employee_id =parks.department_id;

-- question 5
select dem.employee_id,dem.first_name, dem.last_name , salary
from employee_demographics dem
left join employee_salary sal
on dem.employee_id = sal.employee_id;

select *
from employee_salary;
select * 
from parks_departments;
select * 
from employee_demographics;

-- question 5
select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa
,emp1.last_name as last_name_santa,
emp2.employee_id as emp_name
,emp2.first_name as first_emp_name,
emp2.last_name as last_emp_name
from employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id +1 = emp2.employee_id;

-- question 6
select first_name,last_name ,age
from employee_demographics
where age > 40
union
select first_name,last_name,salary
from employee_salary
where salary > 70000
Order by first_name, last_name;

-- question 7
select first_name,length(first_name)
from employee_salary;

select first_name,upper(first_name)
from employee_salary;

select first_name, last_name ,substring(birth_date,6,2) as birth_month
from employee_demographics;

select first_name,last_name,concat(first_name,' ',last_name) as full_name
from employee_salary
;
-- more practice questions
select distinct occupation
from employee_salary;

-- 2
select first_name, last_name, salary
from employee_salary
order by salary desc
limit 10;

-- 3
select count(department_name) ,department_name
from employee_salary sal
left join parks_departments dep
on sal.dept_id = dep.department_id
group by department_name
;


select first_name, last_name, salary,department_name
from employee_salary sal
left join parks_departments dep
on sal.dept_id = dep.department_id
where department_name = 'finance' and salary > 60000
;
select first_name, last_name, salary,
case
	when salary < 40000 then 'entry level'
    when salary > 40000 and salary <  70000 then 'Mid Level'
    when salary > 70000 then 'senior level'
end as level
from employee_salary
;
