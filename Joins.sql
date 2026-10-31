/* Get all customers along with their orders, but only for customers who placed an order */
USE MyDatabase
SELECT 
id,
first_name,
order_id,
sales
FROM customers AS cu
INNER JOIN orders AS o
ON cu.id = o.customer_id


select *
from orders

/* Get all customers along with their orderd,including those without orders*/


SELECT 
id,
first_name,
order_id,
sales
FROM customers AS cu
LEFT JOIN orders AS o
ON cu.id = o.customer_id


/* Get all customers along with their orderS,including orders without matching customers. */


SELECT 
id,
first_name,
order_id,
sales
FROM customers AS cu
RIGHT JOIN orders AS o
ON cu.id = o.customer_id

/* Get all customers and all orders, even if theres no match. */



SELECT 
id,
first_name,
order_id,
sales
FROM customers AS cu
full JOIN orders AS o
ON cu.id = o.customer_id

/* Get all customers who haven't place any order */



SELECT 
id,
first_name,
order_id,
sales
FROM customers AS cu
LEFT JOIN orders AS o
ON cu.id = o.customer_id
WHERE o.customer_id IS NULL


/* Get all customers who haven't place any order */



SELECT 
id,
first_name,
order_id,
sales
FROM orders AS o
LEFT JOIN  customers AS cu
ON cu.id = o.customer_id
WHERE cu.id IS NULL

SELECT 
id,
first_name,
order_id,
sales
FROM customers AS cu
RIGHT JOIN orders AS o
ON cu.id = o.customer_id
WHERE cu.id IS NULL




/* Find customers without orders and orders without customers*/



SELECT 
id,
first_name,
order_id,
sales
FROM orders AS o
FULL JOIN  customers AS cu
ON cu.id = o.customer_id
WHERE cu.id IS NULL OR 
	  o.customer_id IS NULL


/*get all customers along with their orders but only for customers who have placed an order(Without using INNER JOIN*/


-- GENERATE THE ALL POSSIBLE COMBINATION OF CUSTOMERS AND ORDERS

SELECT *
FROM customers
CROSS JOIN orders



