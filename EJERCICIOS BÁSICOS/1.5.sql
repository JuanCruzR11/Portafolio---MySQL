CREATE DATABASE IF NOT EXISTS Sales;
USE Sales;
CREATE TABLE Sales
(
	purchase_number INT NOT NULL PRIMARY KEY auto_increment,
    date_of_purchase DATE NOT NULL, 
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);

CREATE TABLE Customers
(
	customer_id INT,
    firts_name VARCHAR(255),
    last_name VARCHAR(255),
    email_adreess VARCHAR(255),
    number_of_complaints INT,
primary key (customer_id)
);

CREATE TABLE items
(
	item_code VARCHAR(255) PRIMARY KEY,
    item VARCHAR(255),
    unit_price NUMERIC(10,2),
    company_id VARCHAR(255)
);

CREATE TABLE companies
(
	company_id VARCHAR(255) PRIMARY KEY,
    company_name VARCHAR(255),
    headquarters_phone_number INT(12)
);

