INSERT INTO cities(name)
VALUES ('Berlin'),
  ('New York'),
  ('London');
SELECT *
FROM users;
INSERT INTO addresses(street, house_number, city_id)
VALUES ('Test Street', '7A', 1),
  ('Some Street', '16', 2),
  ('My Street', '08', 3),
  ('Test Street', '125', 1);
INSERT INTO users(first_name, last_name, email, address_id)
VALUES ('Han', 'Trinh', 'hantn16@gmail.com', 1),
  ('Max', 'Martinez', 'martinez@test.com', 2),
  ('Emily', 'Greenwood', 'emily@test.com', 3),
  ('Julia', 'Sanchez', 'julia_sanchez@test.com', 4),
  ('Hue', 'Nguyen', 'minhhue@test.com', 1);