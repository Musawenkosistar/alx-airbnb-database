SELECT
    p.property_id,
    p.title,
    p.location
FROM
    properties p
WHERE
    p.property_id IN (
        SELECT
            r.property_id
        FROM
            reviews r
        GROUP BY
            r.property_id
        HAVING
            AVG(r.rating) > 4.0
    )
ORDER BY
    p.property_id;

SELECT
    u.user_id,
    u.username,
    u.email
FROM
    users u
WHERE
    (
        SELECT
            COUNT(*)
        FROM
            bookings b
        WHERE
            b.user_id = u.user_id
    ) > 3
ORDER BY
    u.user_id;
