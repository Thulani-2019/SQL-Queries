-- Limit & Aliasing
select *
from employee_demographics
order by age desc
limit 3
;


-- Aliasing
SELECT gender, AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;

