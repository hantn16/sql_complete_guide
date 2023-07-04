-- INSERT INTO users(first_name)
-- VALUES
-- ('Han'),('Hue'),('Ha');
-- INSERT INTO users_friends(user_id,friend_id)
-- VALUES
-- (1,2),(1,3);
-- INSERT INTO users_friends(user_id,friend_id)
-- VALUES
-- (3,2);

(SELECT u1.id,u1.first_name,u2.first_name AS friend FROM users AS u1
INNER JOIN users_friends AS uf ON u1.id = uf.user_id
INNER JOIN users AS u2 ON u2.id = uf.friend_id)
UNION
(SELECT u1.id,u1.first_name,u2.first_name AS friend FROM users AS u1
INNER JOIN users_friends AS uf ON u1.id = uf.friend_id
INNER JOIN users AS u2 ON u2.id = uf.user_id);