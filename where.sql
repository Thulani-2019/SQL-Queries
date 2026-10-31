SELECT *
FROM employee_demographics
WHERE birth_date >  '1985-01-01'
OR gender != 'female';
