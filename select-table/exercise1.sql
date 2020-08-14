USE coffe_shop;

SELECT * FROM customers;
SELECT * FROM products;

-- Question One --
SELECT first_name, phone_number FROM customers
WHERE last_name = 'Bluth'
AND gener = 'F';

-- Question Two --
SELECT name FROM products
WHERE price > 3.00
OR country = 'Sri Lanka';

-- Question Three --
SELECT * FROM customers
WHERE gener = 'M'
AND phone_number IS NULL;