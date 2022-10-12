
CREATE TABLE Customers
(
	customer_id INT,
    firts_name VARCHAR(255),
    last_name VARCHAR(255),
    email_adreess VARCHAR(255),
    number_of_complaints INT,
primary key (customer_id)
);

ALTER TABLE customers
ADD UNIQUE KEY (email_adreess);