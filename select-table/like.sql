USE coffe_shop;

SELECT * FROM customers;
SELECT * FROM products;

/* 
% -> Any number of characters
_ -> Just one character
*/

SELECT * FROM customers
WHERE last_name LIKE 'W%';

SELECT * FROM customers
WHERE first_name LIKE '_o_';

SELECT * FROM products
WHERE price LIKE '3%';