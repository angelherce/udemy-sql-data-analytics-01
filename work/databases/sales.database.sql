CREATE DATABASE IF NOT EXISTS sales CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
-- CREATE SCHEMA IF NOT EXISTS sales CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;;

USE sales;

CREATE TABLE sales (
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR( 10 ) NOT NULL
);

CREATE TABLE customers (
	customer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR( 255 ) NOT NULL,
    last_name VARCHAR( 255 ) NOT NULL,
    email_address VARCHAR( 255 ) NOT NULL,
    number_of_complaints INT NOT NULL
);