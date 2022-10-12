CREATE DATABASE IF NOT EXISTS Sales;
USE Sales;
CREATE TABLE Sales
(
	purchase_number INT NOT NULL auto_increment,
    date_of_purchase DATE NOT NULL, 
    customer_id INT,
    item_code VARCHAR(10) NOT NULL,
PRIMARY KEY(purchase_number)
);

