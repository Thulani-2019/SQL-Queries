-- Unions

SELECT first_name , last_name
FROM employee_demographics
UNION
SELECT first_name , last_name
FROM employee_salary
;

SELECT first_name , last_name, 'OLD MAN' LABEL
FROM employee_demographics
WHERE age >40  AND gender ='MALE'
UNION
SELECT first_name , last_name, 'OLD LADY'  LABEL
FROM employee_demographics
WHERE age > 40 AND gender ='FEMALE' 
UNION
SELECT first_name , last_name, 'Highly Paid Employee' as LABEL
FROM employee_salary
WHERE salary > 70000
order by first_name, last_name
;