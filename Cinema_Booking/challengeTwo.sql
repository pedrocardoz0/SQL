USE cinema_booking_system;

SELECT * FROM screenings;
SELECT name FROM films;

SELECT f.name, s.film_id, count(s.id) as counter FROM screenings s
JOIN films f ON s.film_id = f.id
WHERE MONTH(s.start_time) = 10 AND YEAR(s.start_time) = 2017
GROUP BY s.film_id
ORDER BY counter DESC
LIMIT 1;