USE cinema_booking_system;

SELECT * FROM films;
SELECT * FROM screenings;
SELECT * FROM bookings;

SELECT COUNT(s.id) AS Bookings FROM screenings s
JOIN films f ON s.film_id = f.id
WHERE f.name = 'Jigsaw' AND MONTH(s.start_time) = 10 AND YEAR(s.start_time) = 2017;

SELECT COUNT(*) AS no_bookings FROM bookings 
WHERE screening_id IN
(SELECT id FROM screenings 
WHERE film_id = 5);