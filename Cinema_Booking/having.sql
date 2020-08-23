USE cinema_booking_system;

SELECT * FROM bookings;

SELECT customer_id, screening_id, COUNT(id) FROM bookings
GROUP BY customer_id, screening_id
HAVING customer_id = 10;