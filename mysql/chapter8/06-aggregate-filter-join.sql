-- SELECT ROUND(AVG(amount_tipped),2) FROM bookings
-- WHERE amount_billed > 30;
-- SELECT MAX(amount_tipped/amount_billed) FROM bookings;

-- SELECT MAX(b.guests_num),MAX(t.seats_num) FROM bookings AS b
-- INNER JOIN tables AS t ON b.table_id = t.id;
SELECT MAX(b.guests_num),MAX(t.seats_num) FROM bookings AS b
INNER JOIN tables AS t ON b.table_id = t.id
INNER JOIN payment_methods AS p ON b.payment_id = p.id
WHERE p.name NOT LIKE 'Credit%' AND t.seats_num < 5;
