USE cinema_booking_system;

-- Question One --
SELECT * FROM films;
SELECT CONCAT(name, ' ',length_min) AS Film_AVG FROM films;

-- Question Two --
SELECT SUBSTRING(email, 5) AS email_short FROM customers;

-- Question Three --
SELECT * FROM customers;
SELECT LOWER(first_name) AS first_name, UPPER(last_name) AS last_name FROM customers
WHERE last_name = 'Smith';

-- Question Four --
SELECT * FROM films;
SELECT SUBSTRING(name, -3) FROM films;

-- Question Five --
SELECT CONCAT(SUBSTRING(first_name, 1, 3), ' ', SUBSTRING(last_name, 1, 3)) as 'Concat Name' FROM customers;