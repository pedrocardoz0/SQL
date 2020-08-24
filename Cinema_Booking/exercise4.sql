USE cinema_booking_system;

-- Quetion One --
SELECT * FROM screenings;
SELECT film_id, start_time FROM screenings
WHERE DATE(start_time) = '2017-10-20';

-- Question Two --
SELECT * FROM screenings
WHERE DATE(start_time) BETWEEN '2017-10-06' AND '2017-10-13';

-- Question Three --
SELECT * FROM screenings
WHERE MONTH(start_time) = 10
AND YEAR(start_time) = 2017;