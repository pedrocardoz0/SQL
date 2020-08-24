USE cinema_booking_system;

-- Date Function --
SELECT DATE('2018-06-05 07:45:32');

SELECT start_time FROM screenings;

SELECT DATE(start_time) FROM screenings;

SELECT * FROM screenings
WHERE DATE(start_time) = '2017-10-03';

SELECT * FROM screenings
WHERE DATE(start_time) BETWEEN '2017-10-03' AND '2017-10-05';

-- Month Function --

SELECT MONTH('2018-06-05 07:45:32') AS Month;

SELECT start_time FROM screenings;

SELECT MONTH(start_time) FROM screenings;

SELECT * FROM screenings
WHERE MONTH(start_time) = 10;

-- Year Function --

SELECT YEAR('2018-06-05') as Year;

SELECT start_time FROM screenings;

SELECT YEAR(start_time) FROM screenings;

SELECT * FROM screenings
WHERE YEAR(start_time) = 2017;