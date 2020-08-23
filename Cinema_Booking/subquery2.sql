USE cinema_booking_system;

SELECT * FROM reserved_seat;

SELECT AVG(no_seats) as 'Average', MAX(no_seats) as 'Maximum' FROM (
SELECT booking_id, COUNT(seat_id) as no_seats FROM reserved_seat
GROUP BY booking_id) b;

SELECT booking_id, COUNT(seat_id) as no_seats FROM reserved_seat
GROUP BY booking_id;