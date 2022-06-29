SELECT *
FROM addresses a
         LEFT JOIN users u on a.id = u.address_id
         LEFT JOIN cities c on c.id = a.city_id;