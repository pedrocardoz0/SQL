USE coffe_shop;

SELECT * FROM products;
SELECT * FROM orders;

SELECT products.name, orders.order_time FROM orders
INNER JOIN products ON orders.product_id = products.id;

SELECT p.name, p.price, o.order_time FROM orders o
JOIN products p ON o.product_id = p.id
WHERE o.product_id = 5
ORDER BY o.order_time;