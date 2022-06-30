# INSERT INTO users (first_name)
# VALUES ('Manuel'), ('Max'), ('Julie');
#
# INSERT INTO users_friends (user_id, friend_id)
# VALUES (1, 2), (1, 3);

SELECT u.first_name user_firstname, f.first_name friend_firstname
FROM users u
         INNER JOIN users_friends uf on u.id = uf.user_id
         INNER JOIN users f ON f.id = uf.friend_id;