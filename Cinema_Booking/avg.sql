USE cinema_booking_system;

SELECT * FROM films;

SELECT AVG(length_min) FROM films;

SELECT ROUND(AVG(length_min), 2) FROM films
WHERE length_min > 120;