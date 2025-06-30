
-- 1. View execution plan for a common query
EXPLAIN ANALYZE
SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.start_date BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY b.start_date;

-- 2. View execution plan for a review query
EXPLAIN ANALYZE
SELECT r.rating, r.comment, u.first_name, u.last_name
FROM reviews r
JOIN users u ON r.user_id = u.user_id
WHERE r.rating >= 4
ORDER BY r.created_at DESC;
