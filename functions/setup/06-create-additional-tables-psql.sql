CREATE TABLE customers
(
    id         SERIAL PRIMARY KEY,
    first_name VARCHAR(200),
    last_name  VARCHAR(200),
    email      VARCHAR(200)
);

CREATE TABLE orders
(
    id            SERIAL PRIMARY KEY,
    amount_billed NUMERIC(5, 2),
    customer_id   INT REFERENCES customers
);