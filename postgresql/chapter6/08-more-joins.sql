SELECT name AS city_name,u.first_name,u.last_name,a.street,a.house_number
FROM cities AS c
LEFT JOIN addresses AS a ON a.city_id = c.id
LEFT JOIN users AS u ON a.id = u.address_id;