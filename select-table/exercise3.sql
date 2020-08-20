USE coffe_shop;

-- Exercise One --
SELECT DISTINCT last_name FROM customers
ORDER BY last_name ASC;

-- Exercise Two --
SELECT * FROM orders
WHERE customer_id = 1 
AND order_time BETWEEN '2017-02-01' AND '2017-02-28'
ORDER BY order_time ASC
LIMIT 3;

-- Exercise Three --
SELECT name, price as retail_price, country FROM products;