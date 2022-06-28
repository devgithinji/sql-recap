-- DROP DATABASE IF EXISTS OnlineShop;
--
-- CREATE DATABASE OnlineShop;


CREATE TABLE products
(
    product_name VARCHAR(200),
    price        FLOAT,
    description  TEXT,
    stock        INT,
    image        VARCHAR(100)
);


INSERT INTO products(product_name, price, description, stock, image)
VALUES ('nike sneakers', 2500, 'good shoes for sporting!', 20, '/images/nike-sneakers.jpg');


ALTER TABLE products
    ALTER COLUMN product_name SET NOT NULL,
    ALTER COLUMN price SET NOT NULL,
    ALTER COLUMN description SET NOT NULL,
    ADD CONSTRAINT check_price CHECK ( price > 0 ),
    ADD CONSTRAINT check_stock CHECK ( stock >= 0 );


ALTER TABLE products
    ADD id SERIAL PRIMARY KEY;
