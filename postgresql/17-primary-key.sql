DROP TABLE users;
DROP TABLE employers;
DROP TABLE conservations;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(300) NOT NULL,
    yearly_salary FLOAT CHECK(yearly_salary > 0),
    current_status employment_status
);
CREATE TABLE employers(
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK(yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);
CREATE TABLE conservations(
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    company_id INT NOT NULL,
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);