-- CREATE DATABASE restaurants;
CREATE TYPE table_size AS ENUM('small','medium','large');
CREATE TABLE payment_methods(
    id SERIAL PRIMARY KEY,
    name VARCHAR(200)
);
CREATE TABLE tables(
    id SERIAL PRIMARY KEY,
    seats_num INT NOT NULL,
    category table_size NOT NULL
);
CREATE TABLE bookings(
    id SERIAL PRIMARY KEY,
    booking_date DATE NOT NULL,
    guests_num INT NOT NULL,
    amount_billed NUMERIC(10,2) NOT NULL CHECK(amount_billed >= 0),
    amount_tipped NUMERIC(10,2) CHECK(amount_tipped >= 0),
    table_id INT REFERENCES tables ON DELETE SET NULL,
    payment_id INT REFERENCES payment_methods ON DELETE SET NULL
);