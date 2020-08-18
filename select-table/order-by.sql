USE coffe_shop;

-- It will display in ascending order --
SELECT * FROM products
ORDER BY price ASC;

-- It will display in desc order --
SELECT * FROM products
ORDER BY price DESC;

-- String Order --
SELECT * FROM customers
ORDER BY last_name ASC;

SELECT * FROM customers
ORDER BY last_name DESC;

SELECT * FROM orders
WHERE customer_id=1
ORDER BY order_time ASC;