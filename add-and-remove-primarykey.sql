use test;

DESCRIBE people;
DESCRIBE addresses;
DESCRIBE pets;

-- Adding and Primary Key To a Table --
ALTER TABLE addresses
ADD PRIMARY KEY (id);

ALTER TABLE people
ADD CONSTRAINT FK_addresses
FOREIGN KEY (address_id) REFERENCES addresses(id);

-- Removing Foreing Keys --
ALTER TABLE people
DROP FOREIGN KEY FK_addresses;

-- Add UNIQUE Foreing Key --
ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE (species);

-- Remove UNIQUE Foreing Key --
ALTER TABLE pets
DROP INDEX u_species;
