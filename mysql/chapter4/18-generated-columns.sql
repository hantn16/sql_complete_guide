-- -- DROP TABLE users;
-- DROP TABLE employers;
-- DROP TABLE conservations;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    full_name VARCHAR(401) GENERATED ALWAYS AS(CONCAT(first_name,' ',last_name)),
    yearly_salary FLOAT CHECK(yearly_salary > 0),
    current_status ENUM('employed','self-employed','unemployed')
);
CREATE TABLE employers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK(yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);
CREATE TABLE conservations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    company_id INT NOT NULL,
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users(
    first_name,last_name,yearly_salary,current_status
) VALUES ('Han','Trinh',10000,'employed');