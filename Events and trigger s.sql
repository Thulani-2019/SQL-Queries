-- Triggers and Events

select *
FROM employee_demographics;

select *
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER 	employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics(employee_id ,first_name ,last_name)
    VALUES (NEW.employee_id, NEW.first_name ,NEW.last_name);
END $$
DELIMITER ;    

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (13, 'David' , 'Wallace', 'CEO', 1000000, NULL);





-- EVENTS
DELIMITER $$
CREATE EVENT delete_retirees1
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE
    FROM employee_demographics
    WHERE AGE > 60;
END $$
DELIMITER ;

