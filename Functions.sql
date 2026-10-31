-- STRINGS FUNCTIONS

SELECT length('skyfall');

SELECT first_name, length(first_name)
from employee_demographics
Order by 2;

select upper('sky');
select lower('SKY');

SELECT first_name, UPPER(first_name)
from employee_demographics;

select Trim('          sky       ');
select LTrim('          sky       ');
select RTrim('          sky       ');

select first_name, 
left(first_name, 4),
right(first_name, 4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) birthmonth
from employee_demographics;

select first_name ,
replace(first_name,'a','z')
from employee_demographics;

select locate('H','Thulani');

select first_name, locate('An',first_name)
from employee_demographics;

select first_name, last_name,
concat(first_name,' ',last_name) Full_name
from employee_demographics;
