USE coffe_shop;

SELECT * FROM customers;

SELECT * FROM customers
WHERE last_name IN ('Taylor', 'Bluth', 'Armstrong');

SELECT * FROM customers
WHERE first_name NOT IN ('Katie', 'John', 'George')