-- TEMP TABLES

CREATE TEMPORARY TABLE Favourite_movies
(first_name varchar(50),
last_name varchar(50),
Favourite_series varchar(70)
);

SELECT *
FROM Favourite_movies;

INSERT INTO Favourite_movies
VALUES('Thulani', 'Tshona','The Office');

SELECT *
FROM Favourite_movies;

SELECT *
FROM employee_demographics; 

SELECT *
FROM employee_salary; 


CREATE TEMPORARY TABLE salary_over_50K
SELECT *
FROM employee_salary
WHERE salary >= 50000;

select *
FROM salary_over_50K;












