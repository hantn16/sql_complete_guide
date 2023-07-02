SELECT * FROM users
WHERE id > 3
UNION
SELECT * FROM users
WHERE id > 6 ORDER BY id;