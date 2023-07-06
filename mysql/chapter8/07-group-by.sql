-- SELECT booking_date,COUNT(id) AS booking_num,SUM(guests_num) AS total_guests FROM bookings
-- GROUP BY booking_date;
SELECT p.name,b.booking_date,SUM(b.guests_num),SUM(b.amount_billed)
FROM bookings AS b
INNER JOIN payment_methods AS p ON b.payment_id = p.id
GROUP BY p.name,b.booking_date;
