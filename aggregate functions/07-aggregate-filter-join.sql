# SELECT ROUND(AVG(amount_tipped), 2)
# FROM bookings
# WHERE amount_billed > 20 AND num_guests > 2;

# SELECT MAX(b.num_guests), MAX(t.num_seats)
# FROM bookings b
#          INNER JOIN tables t on b.table_id = t.id;

SELECT MAX(b.num_guests), MAX(t.num_seats)
FROM bookings b
         INNER JOIN tables t on b.table_id = t.id
         INNER JOIN payment_methods pm on b.payment_id = pm.id
WHERE t.num_seats < 5 AND pm.name = 'Cash';