-- Postgresql enum
CREATE TYPE employee_status AS ENUM('employed','self-employed','unemployed');


CREATE TABLE users (
  full_name VARCHAR(200),
  yearly_salary INT,
  current_status employee_status
);