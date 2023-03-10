DROP DATABASE IF EXISTS sales;

CREATE DATABASE IF NOT EXISTS sales CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE sales;

CREATE TABLE sales (
	purchase_number INT NOT NULL AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR( 10 ) NOT NULL,

    PRIMARY KEY( purchase_number )
);

CREATE TABLE customers (
	customer_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR( 255 ) NOT NULL,
    last_name VARCHAR( 255 ) NOT NULL,
    email_address VARCHAR( 255 ) NOT NULL,
    number_of_complaints INT NOT NULL DEFAULT 1,

    PRIMARY KEY( customer_id ),
    UNIQUE KEY( email_address )
);

CREATE TABLE items (
	item_code VARCHAR( 255 ) NOT NULL,
    item VARCHAR( 255 ) NOT NULL,
    unit_price NUMERIC( 10, 2 ) NOT NULL,
    company_id VARCHAR( 255 ) NULL,
    number_of_complaints INT NOT NULL,

    PRIMARY KEY( item_code )
);

CREATE TABLE companies (
	company_id VARCHAR( 255 ) NOT NULL,
    company_name VARCHAR( 255 ) NOT NULL DEFAULT 'X',
    headquarters_phone_number VARCHAR( 255 ) NOT NULL,

    PRIMARY KEY( company_id ),
    UNIQUE KEY( headquarters_phone_number )
);

ALTER TABLE sales
    ADD FOREIGN KEY( customer_id ) REFERENCES customers( customer_id )
        ON DELETE CASCADE;

ALTER TABLE customers
    ADD COLUMN gender ENUM('M','F') AFTER last_name,
    CHANGE COLUMN number_of_complaints number_of_complaints INT NOT NULL DEFAULT 0,
    DROP INDEX email_address;

ALTER TABLE customers
    ALTER COLUMN number_of_complaints DROP DEFAULT;

ALTER TABLE companies
    MODIFY headquarters_phone_number VARCHAR( 255 ) NULL;

ALTER TABLE companies
    CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR( 255 ) NOT NULL;

DROP TABLE companies;

INSERT INTO customers ( first_name, last_name, gender, email_address )
    VALUES ( 'John', 'Mackinley', 'M', 'john.mckinley@365careers.com' );