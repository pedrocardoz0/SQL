USE cinema_booking_system;

SELECT * FROM rooms;

SELECT sum(no_seats) FROM rooms;

SELECT sum(no_seats) FROM rooms
WHERE id > 1;
