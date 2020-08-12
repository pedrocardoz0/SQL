use test;
DESCRIBE pets;
DESCRIBE people;
DESCRIBE addresses;

-- Add Primary Keys --

ALTER TABLE pets
ADD PRIMARY KEY (id);

ALTER TABLE people
ADD PRIMARY KEY (id);

-- Foreign Key --

ALTER TABLE pets
ADD FOREIGN KEY (owner_id) REFERENCES people(id);

-- Add Column Named Email --
ALTER TABLE people
ADD `email` varchar(20);

-- Add Unique Constraint to email Column --
ALTER TABLE people
ADD CONSTRAINT CS_email
UNIQUE (email);

-- Rename Column Name in Pets --
ALTER TABLE pets
CHANGE `name` `first_name` varchar(30);

-- Change Postcode data type --
ALTER TABLE addresses
MODIFY post_code CHAR(7);