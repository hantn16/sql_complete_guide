-- CREATE DATABASE online_shop;
-- CREATE TABLE products(
--   product_name VARCHAR(200),
--   price FLOAT,
--   description VARCHAR(500),
--   amount_in_stock FLOAT,
--   image VARCHAR(200)
-- );
-- INSERT INTO products(
--     product_name,
--     price,
--     description,
--     amount_in_stock,
--     image
--   )
-- VALUES (
--     'red chair',
--     150000,
--     'the red chair to sit',
--     10,
--     '/products/chair/red-chair'
--   );
-- INSERT INTO products(
--     product_name,
--     price,
--     description,
--     amount_in_stock,
--     image
--   )
-- VALUES (
--     'blue desk',
--     150000,
--     'the blue desk to work',
--     10,
--     '/products/desk/blue-desk'
--   );
-- ALTER TABLE products
-- ALTER COLUMN product_name
-- SET DATA TYPE VARCHAR(300),
--   ALTER COLUMN image
-- SET DATA TYPE VARCHAR(500),
--   ADD CONSTRAINT price_positive CHECK(price > 0),
--   ADD CONSTRAINT amount_positive CHECK(amount_in_stock > 0);
ALTER TABLE products
ADD COLUMN id SERIAL PRIMARY KEY;