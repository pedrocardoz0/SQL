USE cinema_booking_system;

SELECT * FROM reserved_seat;
SELECT * FROM customers;
SELECT * FROM bookings;
SELECT * FROM screenings;
SELECT * FROM films;
SELECT * FROM rooms;
SELECT * FROM seats;

SELECT * FROM customers, bookings, reserved_seat;

-- Question One --

SELECT c.id, COUNT(r.booking_id) FROM reserved_seat r
JOIN bookings b ON r.booking_id = b.id
JOIN customers c ON b.customer_id = c.id
JOIN screenings s ON b.screening_id = s.id
GROUP BY c.id, s.start_time
HAVING s.start_time BETWEEN '2017-10-01' AND '2017-10-30';

-- ok	
SELECT c.id, COUNT(b.customer_id) FROM customers c
JOIN bookings b ON c.id = b.customer_id
JOIN reserved_seat r ON b.id = r.booking_id
GROUP BY c.id;
-- ok

-- Question Two --

SELECT f.name, f.length_min, count(s.film_id) as 'Times' FROM films f
JOIN screenings s ON f.id = s.film_id
GROUP BY f.name, f.length_min
HAVING f.length_min > 120
ORDER BY f.name;