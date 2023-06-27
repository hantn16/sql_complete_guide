-- --SUBQUERY
-- SELECT customer_name, product_name, date_created
-- FROM (SELECT * FROM sales) AS my_table;

--VIEW
CREATE VIEW my_view AS (SELECT * FROM sales);

-- -- SELECT customer_name, product_name, date_created, volume FROM my_view;
-- SELECT * FROM my_view;