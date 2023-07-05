-- SELECT ROUND(AVG(amount_billed),2) FROM bookings
-- WHERE amount_billed > 5;
-- SELECT MIN(amount_tipped/amount_billed) FROM bookings;

-- SELECT MAX(b.guests_num),MAX(t.seats_num) FROM bookings AS b
-- INNER JOIN tables AS t ON b.table_id = t.id;
SELECT MAX(b.guests_num),MAX(t.seats_num) FROM bookings AS b
INNER JOIN tables AS t ON b.table_id = t.id
INNER JOIN payment_methods AS p ON b.payment_id = p.id
WHERE p.name LIKE 'Cash' AND t.seats_num < 5;
