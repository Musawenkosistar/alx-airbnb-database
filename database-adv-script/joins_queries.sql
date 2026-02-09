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
    p.property_id = r.property_id
ORDER BY 
    p.property_id;
