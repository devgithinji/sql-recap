# SELECT booking_date, SUM(num_guests)
# FROM bookings
# GROUP BY booking_date;

# SELECT pm.name payment_method, SUM(num_guests) number_of_guests
# FROM bookings b
#          INNER JOIN payment_methods pm on b.payment_id = pm.id
# GROUP BY pm.name;

SELECT pm.name payment_method, b.booking_date, SUM(num_guests) number_of_guests, ROUND(AVG(amount_tipped))
FROM bookings b
         INNER JOIN payment_methods pm on b.payment_id = pm.id
GROUP BY pm.name, b.booking_date;