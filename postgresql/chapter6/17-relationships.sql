DROP TABLE IF EXISTS employees_projects;
DROP TABLE IF EXISTS intranet_accounts;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS buildings;
DROP TABLE IF EXISTS projects;

CREATE TABLE projects(
    id SERIAL PRIMARY KEY,
    title VARCHAR(300) NOT NULL,
    deadline DATE NOT NULL
);
--
CREATE TABLE buildings(
    id SERIAL PRIMARY KEY,
    name VARCHAR(300)
);

CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name VARCHAR(300),
    description TEXT,
    building_id INT REFERENCES buildings ON DELETE SET NULL
);

CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(300) UNIQUE NOT NULL,
    team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts(
    id SERIAL PRIMARY KEY,
    email VARCHAR(300) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(300)
);

CREATE TABLE employees_projects(
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees ON DELETE CASCADE,
    project_id INT REFERENCES projects ON DELETE CASCADE
);



