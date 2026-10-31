

select  	gender , avg(age)
FROM employee_demographics
group by gender
having avg(age) > 40
;

select  occupation ,avg(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
group by occupation
Having AVG(salary) >75000;

