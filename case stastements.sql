-- CASE STATEMENTS

/* PAY INCREASE AND BONUS
< 50000 = 5%
> 50000 = 7%
Finace = 10% bonus*/


SELECT *
FROM employee_salary;


SELECT *
FROM parks_departments;


SELECT first_name ,
last_name,
salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS NEW_SALARY,
CASE
	WHEN dept_id = 6 THEN salary * 0.1
END as Bonus

FROM employee_salary;
