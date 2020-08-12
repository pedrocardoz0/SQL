CREATE DATABASE test;

USE test;

CREATE TABLE addresses (
	id int,
    house_number int,
    city varchar(30),
    post_code varchar(7)
);

CREATE TABLE people (
	id int,
    first_name varchar(20),
    last_name varchar(20),
    address_id int
);

CREATE TABLE pets(
	id int,
    name varchar(20),
    species varchar(20),
    owner_id int
);

SHOW TABLES;

-- Add Primary Key --

ALTER TABLE addresses
ADD PRIMARY KEY (id);

-- Remove Primary Key --

ALTER TABLE addresses
DROP PRIMARY KEY;

-- Add primary key to people table --
ALTER TABLE people
ADD PRIMARY KEY (id);

-- Remove primary key to people table --
ALTER TABLE people
DROP PRIMARY KEY;

DESCRIBE addresses;
DESCRIBE people;