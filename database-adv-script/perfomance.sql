-- ============================================
-- INITIAL (LESS OPTIMIZED) QUERY
-- Retrieves all bookings with user, property,
-- and payment details without early filtering
-- ============================================

SELECT
    b.booking_id,
    b.check_in,
    b.check_out,
    u.user_id,
    u.username,
    u.email,
    p.property_id,
    p.title,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.payment_status
FROM
    bookings b
JOIN
    users u ON b.user_id = u.user_id
JOIN
    properties p ON b.property_id = p.property_id
JOIN
    payments pay ON b.booking_id = pay.booking_id;

-- ============================================
-- PERFORMANCE ANALYSIS OF INITIAL QUERY
-- ============================================

EXPLAIN
SELECT
    b.booking_id,
    b.check_in,
    b.check_out,
    u.user_id,
    u.username,
    u.email,
    p.property_id,
    p.title,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.payment_status
FROM
    bookings b
JOIN
    users u ON b.user_id = u.user_id
JOIN
    properties p ON b.property_id = p.property_id
JOIN
    payments pay ON b.booking_id = pay.booking_id;

-- ============================================
-- OPTIMIZED QUERY
-- Reduced columns
-- Applied filtering on indexed column
-- Avoided unnecessary data scanning
-- ============================================

SELECT
    b.booking_id,
    b.check_in,
    b.check_out,
    u.username,
    p.title,
    pay.amount,
    pay.payment_status
FROM
    bookings b
JOIN
    users u ON b.user_id = u.user_id
JOIN
    properties p ON b.property_id = p.property_id
LEFT JOIN
    payments pay ON b.booking_id = pay.booking_id
WHERE
    b.check_in >= '2025-01-01';

-- ============================================
-- PERFORMANCE ANALYSIS OF OPTIMIZED QUERY
-- ============================================

EXPLAIN
SELECT
    b.booking_id,
    b.check_in,
    b.check_out,
    u.username,
    p.title,
    pay.amount,
    pay.payment_status
FROM
    bookings b
JOIN
    users u ON b.user_id = u.user_id
JOIN
    properties p ON b.property_id = p.property_id
LEFT JOIN
    payments pay ON b.booking_id = pay.booking_id
WHERE
    b.check_in >= '2025-01-01';

