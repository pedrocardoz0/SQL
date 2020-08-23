SHOW DATABASES;
CREATE DATABASE cinema_booking_system;
USE cinema_booking_system;

SHOW TABLES;
DESCRIBE films;
SELECT * FROM films;

DESCRIBE customers;
SELECT * FROM customers;

DESCRIBE rooms;
SELECT * FROM rooms;

DESCRIBE screenings;
SELECT * FROM screenings;

DESCRIBE seats;
SELECT * FROM seats;

DESCRIBE bookings;
SELECT * FROM bookings;

DESCRIBE reserved_seat;
SELECT * FROM reserved_seat;

CREATE TABLE films(
	id INT primary key auto_increment,
    name VARCHAR(45) NOT NULL UNIQUE,
    length_min INT NOT NULL
);

CREATE TABLE customers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL UNIQUE
);

CREATE TABLE rooms(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    no_seats INT NOT NULL
);

CREATE TABLE screenings (
	id INT PRIMARY KEY AUTO_INCREMENT,
    film_id INT NOT NULL,
    room_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    FOREIGN KEY (film_id) REFERENCES films(id),
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);

CREATE TABLE seats (
	id INT PRIMARY KEY AUTO_INCREMENT,
    row_seat CHAR(1) NOT NULL,
    number INT NOT NULL,
    room_id INT NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);

-- SELECT ´row´ FROM seats; --

CREATE TABLE bookings (
	id INT PRIMARY KEY AUTO_INCREMENT,
    screening_id INT NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (screening_id) REFERENCES screenings(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

DROP TABLE reserved_seat;
CREATE TABLE reserved_seat (
	id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    seat_id INT NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES bookings(id),
    FOREIGN KEY (seat_id) REFERENCES seats(id)
);
