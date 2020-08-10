-- How to delete tables from a database --

CREATE DATABASE example;

use example;

CREATE TABLE test(
	id int auto_increment primary key,
    name varchar(30),
    age int
);

SELECT * FROM test;
SHOW tables;

DROP TABLE test;

-- Truncate delete all the data but do not drop the table --alter
truncate table test;