-- SELECT SUM(amount_tipped) AS sum_tipped FROM bookings;
-- SELECT AVG(amount_billed) AS avg_billed FROM bookings;
-- SELECT ROUND(AVG(guests_num)) AS avg_guests FROM bookings;
SELECT ROUND(AVG(amount_tipped),2) AS avg_guests FROM bookings;