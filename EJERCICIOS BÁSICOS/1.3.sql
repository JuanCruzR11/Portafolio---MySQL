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
    number_of_complaints INT
);

DROP TABLE Sales;
DROP TABLE Customers;
