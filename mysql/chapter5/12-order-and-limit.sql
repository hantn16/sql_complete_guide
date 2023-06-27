-- SELECT * FROM sales
-- ORDER BY date_created;

-- SELECT * FROM sales
-- ORDER BY customer_name DESC
-- LIMIT 4;

SELECT * FROM sales
WHERE customer_name = 'Max Schwarz'
ORDER BY volume
LIMIT 2;