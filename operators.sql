/*find all customers whose first name starts with 'm' */

SELECT *
FROM customers
where first_name LIKE 'M%'

/*find all customers whose first name starts ENDS 'n' */

SELECT *
FROM customers
where first_name LIKE '%n'

/*find all customers whose first name starts ENDS 'n' */

SELECT *
FROM customers
where first_name LIKE '%n'


/*find all customers whose first name contains 'r' in the 3rd position */

SELECT *
FROM customers
where first_name LIKE '%r%'

/*find all customers whose first name contains 'r' */

SELECT *
FROM customers
where first_name LIKE '__r%'