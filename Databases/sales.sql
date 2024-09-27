-- Active: 1704747285489@@127.0.0.1@3306@sales
USE SALES;

CREATE TABLE Suscriptions (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    price DECIMAL(5, 2) NOT NULL
)

INSERT INTO Suscriptions VALUES 
(0, "Wood", 5.99),
(0, "Silver", 10.99),
(0, "Gold", 16.99);

CREATE TABLE Customers (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Cards (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT UNSIGNED,
    card BLOB NOT NULL,
    FOREIGN KEY (customer_id) 
        REFERENCES Customers(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);
CREATE TABLE Services (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT UNSIGNED,
    suscription_id BIGINT UNSIGNED,
    FOREIGN KEY (customer_id)
        REFERENCES Customers(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (suscription_id)
        REFERENCES Suscriptions(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);
