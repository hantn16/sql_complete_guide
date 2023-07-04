DROP TABLE IF EXISTS employees_projects;
DROP TABLE IF EXISTS intranet_accounts;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS buildings;
DROP TABLE IF EXISTS projects;

CREATE TABLE projects(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(300) NOT NULL,
    deadline DATE NOT NULL
);
--
CREATE TABLE buildings(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300)
);

CREATE TABLE teams(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300),
    description TEXT,
    building_id INT REFERENCES buildings(id) ON DELETE SET NULL
);

CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(300) UNIQUE NOT NULL,
    team_id INT DEFAULT 1,
    FOREIGN KEY (team_id) REFERENCES teams(id) ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(300) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(300)
);

CREATE TABLE employees_projects(
    employee_id INT,
    project_id INT REFERENCES projects ON DELETE CASCADE,
    PRIMARY KEY(employee_id,project_id),
    FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE
);



