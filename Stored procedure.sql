-- stored procedures


DELIMITER $$
create procedure Large_salaries()
BEGIN
	select *
	from employee_salary
	where salary >= 50000;
  
END $$
DELIMITER ;

CALL Large_salaries();


-- Procedures


DELIMITER $$
create procedure Large_salaries2()
BEGIN
	select *
	from employee_salary
	where salary >= 50000;
    SELECT *
    FROM EMPLOYEE_SALARY
    WHERE SALARY >= 10000;
  
END $$
DELIMITER ;

CALL Large_salaries2();







SELECT *
FROM employee_salary;

-- PARAMETERS
DELIMITER $$
create procedure Large_salaries3(p_employee_id INT)
BEGIN
	select *
	from employee_salary
	where employee_id = p_employee_id
    ;
    
  
END $$
DELIMITER ;

CALL Large_salaries3(1);




