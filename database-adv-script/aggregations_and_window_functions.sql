--- aggregations_and_window_functions.sql doesn't contain: ["SELECT", "COUNT", "GROUP BY", "FROM"]
--- aggregations_and_window_functions.sql doesn't contain: ["ROW_NUMBER()", "RANK()", "COUNT", "FROM"]

-- Total number of bookings made by each user
SELECT 
  u.user_id,
  u.first_name,
  u.last_name,
  COUNT(b.booking_id) AS total_bookings
FROM 
  users u
LEFT JOIN 
  bookings b ON u.user_id = b.user_id
GROUP BY 
  u.user_id, u.first_name, u.last_name
ORDER BY 
  total_bookings DESC;

-- Ranking properties based on number of bookings
SELECT 
  p.property_id,
  p.name,
  COUNT(b.booking_id) AS total_bookings,
  RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM 
  properties p
LEFT JOIN 
  bookings b ON p.property_id = b.property_id
GROUP BY 
  p.property_id, p.name
ORDER BY 
  booking_rank;
