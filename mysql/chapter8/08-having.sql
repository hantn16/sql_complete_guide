-- SELECT booking_date,COUNT(booking_date)
-- FROM bookings
-- WHERE amount_billed > 30
-- GROUP BY booking_date;
-- SELECT booking_date,COUNT(booking_date),SUM(amount_billed)
-- FROM bookings
-- GROUP BY booking_date
-- HAVING COUNT(booking_date) > 2;

SELECT b.booking_date,COUNT(b.booking_date),SUM(b.amount_billed)
FROM bookings AS b
INNER JOIN payment_methods AS p ON b.payment_id = p.id
WHERE p.name LIKE 'Cash%'
GROUP BY b.booking_date
HAVING SUM(amount_billed) > 30;