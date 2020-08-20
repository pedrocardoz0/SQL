USE coffe_shop;

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;

-- Question One --

SELECT o.id as 'Order ID', c.phone_number as 'Customer ID' FROM orders o
JOIN customers c ON o.customer_id = c.id
WHERE o.product_id = 4;

-- Question Two --

SELECT p.name, o.order_time FROM products p
JOIN orders o ON p.id = o.product_id
WHERE o.order_time BETWEEN '2017-01-15' AND '2017-02-14';

-- Question Three --

SELECT p.name, p.price, o.order_time FROM products p
JOIN orders o ON p.id = o.product_id
JOIN customers c ON o.customer_id = c.id
WHERE c.gener = 'F' AND o.order_time LIKE '2017-01%';