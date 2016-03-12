-- Gavin Mack
-- Downtown Video Database

--gets rid of instances which this script creates
drop table dv_customer, dv_address, dv_film, cb_customers, cb_books, cb_authors, mg_customers;
drop type mpaa_rating;
drop sequence mg_customers_seq;
--

CREATE TABLE dv_customer (
customer_id INTEGER,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50),
address_id INTEGER,
active BOOLEAN,
PRIMARY KEY(customer_id)
);

CREATE TABLE dv_address (
address_id INTEGER,
address VARCHAR(50),
address2 VARCHAR(50),
district VARCHAR(50),
city_id INTEGER,
postal_code VARCHAR(50),
phone VARCHAR(50),
PRIMARY KEY(address_id)
);

CREATE TYPE mpaa_rating AS ENUM (
'G',
'PG',
'PG-13',
'R',
'NC-17'
);

CREATE TABLE dv_film (
film_id INTEGER,
title VARCHAR(50),
description TEXT,
length SMALLINT,
rating MPAA_RATING,
PRIMARY KEY(film_id)
);

-- City Books Database
CREATE TABLE cb_customers (
last_name VARCHAR(50),
first_name VARCHAR(50)
);

CREATE TABLE cb_books (
title VARCHAR(50),
author_id INTEGER
);

CREATE TABLE cb_authors (
author_id INTEGER,
first_name VARCHAR(50),
last_name VARCHAR(50),
PRIMARY KEY(author_id)
);

CREATE TABLE mg_customers (
customer_id INTEGER,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50),
address_id INTEGER,
active BOOLEAN,
PRIMARY KEY(customer_id)
);
