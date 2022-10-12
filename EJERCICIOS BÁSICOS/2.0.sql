
CREATE TABLE companies
(
	company_id VARCHAR(255) PRIMARY KEY,
    company_name VARCHAR(255) DEFAULT "X",
    headquarters_phone_number VARCHAR(255),
UNIQUE KEY (headquarters_phone_number)
);

DROP TABLE COMPANIES