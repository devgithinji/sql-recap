-- SELECT first_name, last_name
-- FROM customers
-- WHERE email = 'max@test.com';

-- SELECT EXISTS(
--                SELECT first_name, last_name FROM customers WHERE email = 'max@test.com'
--            );

SELECT o.id
FROM orders o
WHERE EXISTS(
              SELECT email FROM customers c WHERE o.customer_id = c.id AND c.email = 'max@test.com'
          )