USE cinema_booking_system;

SELECT * FROM bookings;
SELECT * FROM screenings;

SELECT customer_id, COUNT(id) FROM bookings
GROUP BY customer_id;

SELECT customer_id, screening_id, COUNT(id) FROM bookings
GROUP BY customer_id, screening_id;

SELECT f.name, s.start_time, c.first_name, c.last_name, COUNT(b.id) FROM films f
JOIN screenings s ON f.id = s.film_id
JOIN bookings b ON s.id = b.screening_id
JOIN customers c ON b.customer_id = c.id
GROUP BY f.name, s.start_time, c.first_name, c.last_name
ORDER BY s.start_time;