SELECT u.id, first_name, last_name, street, house_number, c.name city_name
FROM users AS u
         INNER JOIN addresses AS a on u.address_id = a.id
         INNER JOIN cities c on a.city_id = c.id
WHERE c.name = 'Berlin'
   OR c.name = 'New York'
ORDER BY u.id DESC;