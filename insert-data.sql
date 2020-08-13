use coffe_shop;

SELECT * FROM products;

INSERT INTO products(name, price)
VALUES('Espresso', 2.5);

INSERT INTO products(name, price)
VALUES('Machiato', 3.00),('Cappuccino', 3.50);

INSERT INTO products(name, price)
VALUES('Cappuccino', 3.00),('Latte', 3.50),('Americano', 3.00),('Flat White', 3.50), ('Filter', 3.00);

-- Add Column --
ALTER TABLE products
ADD country varchar(30);

-- Update Values in Columns --
UPDATE products
SET country = 'Brazil'
WHERE id BETWEEN 1 and 2;

UPDATE products
SET country = 'Costa Rica'
WHERE id = 3;

-- Delete Multiple Values --
DELETE FROM `products` WHERE id BETWEEN 15 and 20;
