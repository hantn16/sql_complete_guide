--GET THE DAY HAVING MINIUM AMOUNT_BILLED
SELECT booking_date
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) = (
    SELECT MIN(daily_sum)
    FROM (
        SELECT booking_date,SUM(amount_billed) AS daily_sum
        FROM bookings
        GROUP BY booking_date
    ) AS daily_rp
);