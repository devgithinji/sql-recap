CREATE TABLE users
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300) NOT NULL,
    last_name  VARCHAR(300) NOT NULL,
    email      VARCHAR(300) NOT NULL,
    address_id INT NOT NULL
);


CREATE TABLE addresses
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    street       VARCHAR(300) NOT NULL,
    house_number INT          NOT NULL,
    city_id      INT NOT NULL
);


CREATE TABLE cities
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL
);