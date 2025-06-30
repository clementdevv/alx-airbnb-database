
# Airbnb Clone - Database Schema

This project is part of the **ALX Airbnb Database Module**, focusing on designing, normalizing, and implementing a production-level relational database for an Airbnb-like platform. The schema lays the foundation for managing users, properties, bookings, payments, reviews, and messages with scalability and efficiency in mind.

---

## Project Objective

The primary goal is to design a robust and normalized database schema using SQL, applying real-world data modeling principles to support the core backend functionality of an Airbnb-style application.

---

## Learning Objectives

By completing this project, you will:

- Apply advanced database design concepts (entities, relationships, normalization)
- Normalize a relational schema up to **Third Normal Form (3NF)**
- Use **SQL DDL** to create tables with keys, constraints, and indexing
- Build a realistic schema to support bookings, payments, user communication, and reviews
- Document and structure your database design in a professional manner

---

## Schema Overview

The database consists of the following entities:

| Table     | Description                                      |
|-----------|--------------------------------------------------|
| `users`   | Stores user info (guests, hosts, admins)         |
| `properties` | Listings created by hosts                      |
| `bookings` | Reservations made by users for properties       |
| `payments` | Payment records linked to bookings              |
| `reviews`  | User reviews and ratings of properties          |
| `messages` | Communication between users                     |

---

## Constraints & Relationships

- All primary keys are UUIDs and indexed
- Foreign keys enforce referential integrity across relationships
- ENUMs define controlled values for `role`, `status`, and `payment_method`
- CHECK constraints enforce valid rating ranges (1–5)
- Indexes are applied to frequently queried fields (e.g., `email`, `booking_id`, `property_id`)

---

## Files

| File          | Description                                      |
|---------------|--------------------------------------------------|
| `schema.sql`  | SQL DDL script to create the full database schema |
| `normalization.md` | Analysis of normalization up to 3NF          |
| `README.md`   | Project documentation (this file)

---

