SELECT u.id,
  u.first_name,
  u.last_name,
  u.email,
  a.house_number,
  a.street,
  c.name AS city_name
FROM users AS u
  INNER JOIN addresses AS a ON u.address_id = a.id
  INNER JOIN cities AS c ON a.city_id = c.id;