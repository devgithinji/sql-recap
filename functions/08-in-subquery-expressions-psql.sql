-- SELECT email FROM customers;

-- SELECT email
-- FROM customers
--          INNER JOIN orders o on customers.id = o.customer_id;

-- SELECT id
-- FROM customers
-- WHERE first_name = 'Max'
--    OR first_name = 'Manu';

-- SELECT id
-- FROM customers
-- WHERE first_name NOT IN ('Max', 'Manu');

SELECT email
FROM customers
WHERE id IN (SELECT customer_id
             FROM orders)