-- SELECT first_name LIKE '_o%', first_name
-- FROM memberships;

-- SELECT first_name
-- FROM memberships
-- WHERE first_name LIKE 'J____';

# mysql like is not case sensitive
SELECT first_name LIKE 'ma%', first_name
FROM memberships;