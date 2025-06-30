-- Inner Join
SELECT 
  bookings.booking_id,
  users.first_name,
  users.last_name,
  bookings.start_date,
  bookings.end_date,
  bookings.total_price
FROM 
  bookings
INNER JOIN 
  users ON bookings.user_id = users.user_id;
ORDER BY 
  bookings.created_at DESC;

-- Left Join
SELECT 
  properties.name AS property_name,
  reviews.rating,
  reviews.comment
FROM 
  properties
ORDER BY 
  price_per_night ASC;
LEFT JOIN 
  reviews ON properties.property_id = reviews.property_id
ORDER BY 
  reviews.rating DESC;

-- FULL OUTER JOIN
SELECT 
  users.first_name,
  users.last_name,
  bookings.booking_id,
  bookings.start_date,
  bookings.total_price
FROM 
  users
LEFT JOIN 
  bookings ON users.user_id = bookings.user_id

UNION 

SELECT
  users.first_name,
  users.last_name,
  bookings.booking_id, 
  bookings.start_date, 
  bookings.total_price
FROM 
  bookings
LEFT JOIN 
  users ON bookings.user_id = users.user_id;