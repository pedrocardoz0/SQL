SHOW databases;

create database coffe_store;
use coffe_store;

create table products (
	id int auto_increment primary key,
    name varchar(30),
    price decimal(3, 2)
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    gener ENUM('M', 'F'),
    phone_number VARCHAR(11)
);

CREATE table orders (
	id int auto_increment primary key,
    product_id int,
    customer_id int,
    order_time datetime,
    foreign key (product_id) references products(id),
    foreign key (customer_id) references customers(id)
);

DROP TABLE customers;

show tables;