-- Seeding Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('00000000-0000-0000-0000-000000000001', 'Alice', 'Anderson', 'alice@example.com', 'hashed_pass1', '1234567890', 'guest'),
  ('00000000-0000-0000-0000-000000000002', 'Bob', 'Brown', 'bob@example.com', 'hashed_pass2', '0987654321', 'host'),
  ('00000000-0000-0000-0000-000000000003', 'Cara', 'Carter', 'cara@example.com', 'hashed_pass3', NULL, 'guest'),
  ('00000000-0000-0000-0000-000000000004', 'Dan', 'Davis', 'dan@example.com', 'hashed_pass4', NULL, 'admin');

-- Seeding Properties
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
  ('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Ocean View Villa', 'A beautiful villa overlooking the ocean.', 'Malibu, CA', 300.00),
  ('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', 'Mountain Cabin', 'Rustic cabin in the woods with a fireplace.', 'Aspen, CO', 150.00);

-- Seeding Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '2024-08-01', '2024-08-05', 1200.00, 'confirmed'),
  ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000003', '2024-08-10', '2024-08-12', 300.00, 'pending');

-- Seeding Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 1200.00, 'credit_card');

-- Seeding Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('40000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 5, 'Absolutely amazing stay with stunning views!'),
  ('40000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000003', 4, 'Cozy and peaceful cabin, great for weekend getaways.');

-- Seeding Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('50000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Hi, is the Ocean View Villa available in September?'),
  ('50000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Yes! It is available between Sept 5–10.');
