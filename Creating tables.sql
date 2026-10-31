CREATE TABLE Person(id int not NULL, person_name varchar(50), birth_date DATE NULL ,phone varchar(15) NOT NULL)

SELECT * FROM Person

INSERT INTO Person(id, person_name ,birth_date ,phone) 
SELECT id,
first_name,
NULL,
'Unknown'
FROM customers