# SELECT COUNT(*) FROM bookings;
# SELECT COUNT(amount_tipped) bookings FROM bookings;
SELECT COUNT(DISTINCT booking_date) bookings FROM bookings;