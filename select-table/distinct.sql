USE coffe_shop;

SELECT DISTINCT country FROM products;

SELECT DISTINCT customer_id, product_id FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28';