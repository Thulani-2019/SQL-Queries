/* Change the score for customer with id = 6 to 0*/
use MyDatabase

SELECT *
FROM customers
WHERE SCORE IS NULL


UPDATE customers
SET score = 0
WHERE id = 6

/*change the score of customer with ID 10 to 0 and update the country to uk*/

UPDATE customers
SET SCORE = 0
WHERE score IS NULL


DELETE FROM customers
WHERE id > 5