-- --SUBQUERY
-- SELECT customer_name, product_name
-- FROM (SELECT * FROM sales) AS base_table;

--VIEW
CREATE VIEW base_table as SELECT * FROM sales;
SELECT customer_name,product_name FROM base_table;