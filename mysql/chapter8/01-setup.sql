-- CREATE DATABASE restaurants;
DROP TABLE IF EXISTS tables;
DROP TABLE IF EXISTS payment_methods;
DROP TABLE IF EXISTS bookings;

CREATE TABLE tables(
    id INT PRIMARY KEY AUTO_INCREMENT,
    seats_num INT NOT NULL,
    category ENUM('small','medium','large') NOT NULL
);
CREATE TABLE payment_methods(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL
);
CREATE TABLE bookings(
    id INT PRIMARY KEY AUTO_INCREMENT,
    booking_date DATE NOT NULL,
    guests_num INT NOT NULL,
    amount_billed NUMERIC(10,2) NOT NULL CHECK(amount_billed > 0),
    amount_tipped NUMERIC(10,2) CHECK(amount_tipped >= 0),
    table_id INT REFERENCES tables ON DELETE SET NULL,
    payment_id INT REFERENCES payment_methods ON DELETE SET NULL
);