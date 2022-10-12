
CREATE TABLE Customers
(
	customer_id INT auto_increment,
    firts_name VARCHAR(255),
    last_name VARCHAR(255),
    email_adreess VARCHAR(255),
    number_of_complaints INT,
primary key (customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M','F') AFTER last_name; 

INSERT INTO customers (firts_name, last_name, gender, email_adreess, number_of_complaints)

VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);
