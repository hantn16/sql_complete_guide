CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    supervisor_id INT REFERENCES employees ON DELETE SET NULL
);
