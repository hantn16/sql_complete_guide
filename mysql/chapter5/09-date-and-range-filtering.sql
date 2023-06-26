-- SELECT *
-- FROM sales
-- WHERE date_created >= '2021-10-01'
--   AND date_created <= '2022-05-31'
-- SELECT *
-- FROM sales
-- WHERE date_created BETWEEN '2021-10-01' AND '2022-05-31'
-- SELECT *
-- FROM sales
-- WHERE volume >= 1000
--   OR volume <= 3000
SELECT *
FROM sales
WHERE volume NOT BETWEEN 1000 AND 3000;