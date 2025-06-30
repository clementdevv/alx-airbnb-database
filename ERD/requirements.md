# AirBnB Database - Entity Relationship Diagram: Schema review

## Schema Review

**Interactive ER Diagram**: [View on db-diagram.io](https://dbdiagram.io/d/AirBnb_clone-6862efe1f413ba350897e868)

### Current Tables
1. **User** - user_id, first_name, last_name, email, password_hash, phone_number, role, created_at
2. **Property** - property_id, host_id, name, description, location, price_per_night, created_at, updated_at
3. **Booking** - booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at
4. **Payment** - payment_id, booking_id, amount, payment_date, payment_method
5. **Review** - review_id, property_id, user_id, rating, comment, created_at
6. **Message** - message_id, sender_id, recipient_id, message_body, sent_at
