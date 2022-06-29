# SELECT *
# FROM users
# WHERE id < 3
# union
# SELECT *
# FROM users
# WHERE id > 5;

SELECT id, first_name FROM users
UNION
SELECT id, street FROM addresses;