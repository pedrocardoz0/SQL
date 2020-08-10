use test;

DESCRIBE people;
DESCRIBE addresses;

-- Adding and Primary Key To a Table --
ALTER TABLE addresses
ADD PRIMARY KEY (id);

ALTER TABLE people
ADD CONSTRAINT FK_addresses
FOREIGN KEY (address_id) REFERENCES addresses(id);