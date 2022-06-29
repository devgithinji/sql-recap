SELECT c.name, u.first_name, u.last_name, a.street, a.house_number as city_name
FROM cities c
         LEFT JOIN addresses a on c.id = a.city_id
         LEFT JOIN users u on a.id = u.address_id;