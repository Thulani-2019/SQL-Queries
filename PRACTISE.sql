-- Joins

-- Inner Joins
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;


SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
    ;
    
    -- Outer join(left)
    SELECT 
    *
FROM
    employee_demographics dem
	LEFT JOIN employee_salary sal ON dem.employee_id = sal.employee_id
;

-- Outer join(left)
    
SELECT *
FROM
    employee_demographics dem
	RIGHT JOIN employee_salary sal ON dem.employee_id = sal.employee_id
;
-- SELF JOIN
SELECT emp1.employee_id ,
emp1.first_name AS Employee_name_santa,
emp1.last_name AS Employee_lastname_santa,
emp2.employee_id ,
emp2.first_name AS Employee_name,
emp2.last_name AS Employee_lastname

FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;

-- Multiple table


SELECT *
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments pd
	ON sal.dept_id = pd.department_id

    ;
    
    SELECT *
    FROM parks_departments;
    
    -- Union
    
    SELECT first_name,last_name, 'Old lady' as label
    FROM employee_demographics
    where age > 40 AND gender = 'Female'
    UNION 
     SELECT first_name,last_name, 'Old MAN' as label
    FROM employee_demographics
    where age > 40 AND gender = 'male'
    UNION
     SELECT first_name,last_name, 'HIGHLY PAID EMPLOYEE' as label
    FROM employee_salary
    where salary > 70000
    ORDER BY first_name ,last_name;
    
    
    
    
