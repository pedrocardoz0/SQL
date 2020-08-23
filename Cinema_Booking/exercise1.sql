USE cinema_booking_system;

-- Question One --
SELECT * FROM bookings;
SELECT * FROM customers;
SELECT * FROM screenings;
SELECT * FROM films;

SELECT COUNT(*) as 'Bookings ID 10' FROM bookings
JOIN screenings s ON bookings.screening_id = s.id
WHERE customer_id = 10 AND s.start_time BETWEEN '2017-10-01' AND '2017-10-30';

-- Question Two --
SELECT COUNT(*) AS 'Screenings' FROM screenings s
JOIN films f ON s.film_id = f.id
WHERE f.name = 'Blade Runner 2049' AND s.start_time BETWEEN '2017-10-01' AND '2017-10-30';

-- Question Three --

SELECT COUNT(DISTINCT customer_id) AS 'Distinct' FROM bookings;