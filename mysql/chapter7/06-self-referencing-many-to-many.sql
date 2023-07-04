CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL
);

CREATE TABLE users_friends(
    user_id INT REFERENCES users ON DELETE CASCADE,
    friend_id INT REFERENCES users ON DELETE CASCADE,
    CHECK(user_id < friend_id),
    PRIMARY KEY(user_id,friend_id)
);