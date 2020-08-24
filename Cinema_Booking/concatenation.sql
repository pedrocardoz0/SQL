USE cinema_booking_system;

SELECT first_name, last_name FROM customers;

SELECT CONCAT(first_name, last_name) FROM customers;
SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM customers;

SELECT CONCAT(first_name, ' ', last_name, ' ', email) AS 'Full Name' FROM customers;
SELECT CONCAT('This is ', first_name, ' ', last_name, 's email', email) AS customer_email FROM customers;