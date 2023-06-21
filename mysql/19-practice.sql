-- CREATE DATABASE online_shop;
CREATE TABLE products(
    name VARCHAR(200),
    price FLOAT,
    description VARCHAR(300),
    amount_in_stock FLOAT,
    image VARCHAR(300)
);
INSERT INTO products(
        name,
        price,
        description,
        amount_in_stock,
        image
    )
VALUES (
        'red chair',
        150000,
        'the red chair to sit',
        10,
        '/products/chair/red-chair'
    );
INSERT INTO products(
        name,
        price,
        description,
        amount_in_stock,
        image
    )
VALUES (
        'blue desk',
        150000,
        'the blue desk to work',
        10,
        '/products/desk/blue-desk'
    );
ALTER TABLE products
MODIFY COLUMN name VARCHAR(200) NOT NULL,
    MODIFY COLUMN price FLOAT NOT NULL,
    ADD CONSTRAINT price_positive CHECK(price > 0),
    ADD CONSTRAINT amount_positive CHECK(amount_in_stock > 0);
ALTER TABLE products
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;