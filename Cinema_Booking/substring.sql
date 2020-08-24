USE cinema_booking_system;

SELECT SUBSTRING('Example', 3, 3) as SUB;

SELECT SUBSTRING(name, 1, 3) AS short_name FROM films;

SELECT SUBSTRING(name, 5, 4) AS short_name FROM films;

SELECT SUBSTRING(name, -2, 2) AS short_name FROM films;

SELECT SUBSTRING(name, -2) AS short_name FROM films;