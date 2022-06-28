DROP DATABASE OnlineShop;

CREATE DATABASE OnlineShop;


USE OnlineShop;

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
    MODIFY COLUMN product_name VARCHAR(200) NOT NULL,
    MODIFY COLUMN price NUMERIC(10, 2) NOT NULL CHECK ( price > 0 ),
    MODIFY COLUMN description TEXT NOT NULL,
    MODIFY COLUMN stock INT CHECK ( stock >= 0 );


ALTER TABLE products
    ADD id INT PRIMARY KEY AUTO_INCREMENT FIRST;
