SELECT booking_date
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) =
       (SELECT MIN(daily_sum)
        FROM (SELECT SUM(amount_billed) daily_sum
              FROM bookings
              GROUP BY booking_date) AS daily_table);