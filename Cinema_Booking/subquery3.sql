USE cinema_booking_system;

SELECT screening_id, customer_id, (
SELECT COUNT(seat_id)
FROM reserved_seat WHERE booking_id = b.id
) as 'Number Of Seats' FROM bookings b
ORDER BY screening_id;