USE example;

CREATE TABLE people (
	id int auto_increment primary key,
	name varchar(30),
    age int,
    gener enum('M', 'F')
);

SELECT * FROM people;

INSERT INTO people (name, age, gener)
VALUES('Emma', 21, 'F'),
('John', 30, 'M'),
('Thomas', 27, 'M'), 
('Chris', 44, 'M'),
('Sally', 23, 'F'),
('Frank', 55, 'M');

-- Delte data from a talbe --
DELETE FROM people
WHERE name = 'John';

DELETE FROM people
WHERE gener = 'F';

-- If you want to delete every single data --
DELETE FROM people;