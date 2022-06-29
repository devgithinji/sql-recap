DROP TABLE IF EXISTS intranet_accounts;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS company_buildings;

# CREATE TABLE projects
# (
#     id       INT PRIMARY KEY AUTO_INCREMENT,
#     title    VARCHAR(200) NOT NULL,
#     deadline DATE         NOT NULL
# );

CREATE TABLE company_buildings
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE teams
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(300) NOT NULL,
    building_id INT,
    FOREIGN KEY (building_id) REFERENCES company_buildings (id) ON DELETE SET NULL
);

CREATE TABLE employees
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name  VARCHAR(200) NOT NULL,
    birthdate  DATE         NOT NULL,
    email      VARCHAR(200) NOT NULL UNIQUE,
    team_id    INT DEFAULT 1,
    FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE SET NULL
);

CREATE TABLE intranet_accounts
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    email    VARCHAR(200),
    password VARCHAR(200) NOT NULL,
    FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE
);