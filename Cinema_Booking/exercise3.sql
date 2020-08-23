USE cinema_booking_system;

SELECT * FROM films;

-- Question One --
SELECT name, length_min FROM films
WHERE id IN (
	SELECT id FROM films
    WHERE length_min > (SELECT AVG(length_min) FROM films)
);

-- Question Two --
SELECT * FROM films;
SELECT * FROM screenings;

SELECT film_id, COUNT(film_id) as count FROM screenings
GROUP BY film_id;

SELECT f.name FROM (
	SELECT s.film_id, COUNT(s.film_id) as count FROM screenings s
	GROUP BY s.film_id
) s2
JOIN films f ON s2.film_id = f.id
WHERE s2.count = (
	SELECT COUNT(s.film_id) as count FROM screenings s
	group by s.film_id
	order by count DESC
	LIMIT 1
);

-- Question Three --

SELECT f.name, COUNT(s.film_id) as count FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY s.film_id
ORDER BY count DESC;

SELECT f.name, COUNT(s.film_id) as count FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY s.film_id;