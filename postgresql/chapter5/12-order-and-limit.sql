-- SELECT * FROM sales
-- ORDER BY volume DESC;

-- SELECT * FROM sales
-- ORDER BY volume DESC
-- LIMIT 5;
SELECT * FROM sales
WHERE is_disputed IS FALSE
ORDER BY volume DESC
LIMIT 5
OFFSET 2;