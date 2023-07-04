CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    supervisor_id INT REFERENCES employees ON DELETE SET NULL
);
