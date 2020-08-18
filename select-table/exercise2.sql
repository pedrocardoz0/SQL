USE coffe_shop;

SELECT * FROM products;

-- Exercise One --
SELECT * FROM products
WHERE country in ('Indonesia', 'Colombia')
ORDER BY name ASC;

-- Exercise Two --
SELECT * FROM orders;

SELECT * FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28'
AND customer_id IN (2, 4, 6, 8);

-- Exercise Three --
SELECT * FROM customers;

SELECT first_name, phone_number, last_name FROM customers
WHERE last_name LIKE '%ar%';
