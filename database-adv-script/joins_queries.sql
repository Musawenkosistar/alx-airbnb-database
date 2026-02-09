SELECT 
    b.booking_id,
    b.check_in,
    b.check_out,
    u.user_id,
    u.username,
    u.email
FROM 
    bookings b
INNER JOIN 
    users u
ON 
    b.user_id = u.user_id;

SELECT
    p.property_id,
    p.title,
    p.location,
    r.review_id,
    r.rating,
    r.comment
FROM
    properties p
LEFT JOIN
    reviews r
ON
    p.property_id = r.property_id;

SELECT
    u.user_id,
    u.username,
    u.email,
    b.booking_id,
    b.check_in,
    b.check_out,
    b.property_id
FROM
    users u
FULL OUTER JOIN
    bookings b
ON
    u.user_id = b.user_id;


