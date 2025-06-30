# Airbnb Clone — Sample Data Seeder (`seed.sql`)

This file contains SQL `INSERT` statements used to populate the Airbnb Clone database with realistic sample data for development and testing purposes.

---

## Purpose of This File

The goal of `seed.sql` is to simulate real-world usage of the platform by populating the database with:

- Multiple **users** (guests, hosts, admins)
- Sample **property listings**
- Example **bookings** with payment details
- **User reviews** and **messages** between users

This allows you to:
- Interact with real-looking data
- Test API endpoints or queries
- Build and debug frontend/backend flows effectively

---

## How to Run the Seeder

1. Ensure your schema is already set up using `schema.sql`.
   ```bash
   psql -d airbnb_clone -f schema.sql
