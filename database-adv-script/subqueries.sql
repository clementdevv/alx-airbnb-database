-- 1. Non-correlated subquery: Properties with average rating > 4.0
SELECT 
  property_id,
  name,
  location,
  price_per_night
FROM 
  properties
WHERE 
  property_id IN (
    SELECT 
      property_id
    FROM 
      reviews
    GROUP BY 
      property_id
    HAVING 
      AVG(rating) > 4.0
  );

-- 2. Correlated subquery: Users with more than 3 bookings
SELECT 
  user_id,
  first_name,
  last_name,
  email
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
  ) > 3;

