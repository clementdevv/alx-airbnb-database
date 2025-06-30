

# AirBnB Database Normalization Analysis

## Overview
This document analyzes the AirBnB database schema against normalization principles and ensures compliance with Third Normal Form (3NF).

## Initial Schema Review

### Current Tables
1. **User** - user_id, first_name, last_name, email, password_hash, phone_number, role, created_at
2. **Property** - property_id, host_id, name, description, location, price_per_night, created_at, updated_at
3. **Booking** - booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at
4. **Payment** - payment_id, booking_id, amount, payment_date, payment_method
5. **Review** - review_id, property_id, user_id, rating, comment, created_at
6. **Message** - message_id, sender_id, recipient_id, message_body, sent_at

## Normalization Analysis

### First Normal Form (1NF) 
**Requirement**: Each column contains atomic values, no repeating groups.

**Status**: COMPLIANT
- All attributes contain single, indivisible values
- No arrays or comma-separated values
- Each row is uniquely identifiable by primary key

### Second Normal Form (2NF) 
**Requirement**: Must be in 1NF + all non-key attributes fully dependent on primary key.

**Status**: COMPLIANT
- All tables use single-column primary keys (UUIDs)
- No composite primary keys present
- All non-key attributes depend entirely on their respective primary keys

### Third Normal Form (3NF) Analysis

**Requirement**: Must be in 2NF + no transitive dependencies (non-key attributes depend only on primary key, not on other non-key attributes).

#### Identified Issues and Resolutions:

**1. Booking Table - Calculated Field**
- **Issue**: `total_price` could be calculated from `price_per_night` × `duration`
- **Resolution**: Keep `total_price` as stored field for business reasons:
  - Handles dynamic pricing, discounts, taxes
  - Prevents price changes from affecting historical bookings
  - **Conclusion**: No violation - justified business requirement

**2. Property Location Granularity**
- **Current**: Single `location` field
- **Analysis**: Could be decomposed (city, state, country) but current design sufficient
- **Conclusion**: No violation - appropriate level of detail

**3. User Full Name Storage**
- **Current**: Separate `first_name` and `last_name` fields
- **Analysis**: Correctly normalized - avoids parsing issues
- **Conclusion**: Proper normalization

## Normalization Compliance Summary

### Schema Passes 3NF Requirements

**No violations found**. The current schema design properly achieves Third Normal Form:

1. **No redundant data**: Information is not unnecessarily duplicated
2. **Proper decomposition**: Entities are appropriately separated
3. **Functional dependencies**: All non-key attributes depend solely on primary keys
4. **No transitive dependencies**: Non-key attributes don't depend on other non-key attributes

## Design Decisions Supporting Normalization

### Foreign Key Relationships
- **User ↔ Property**: `host_id` properly references `user_id`
- **Booking references**: Clean relationships to both `user_id` and `property_id`
- **Payment isolation**: Single `booking_id` reference maintains independence
- **Review relationships**: Proper links to both `property_id` and `user_id`
- **Message self-referencing**: Clean `sender_id`/`recipient_id` to `user_id`

### Attribute Independence
- Each table's attributes relate directly to its primary entity
- No calculated fields that create dependencies
- Timestamps appropriately isolated to each entity's lifecycle

## Conclusion

The AirBnB database schema successfully achieves **Third Normal Form (3NF)** compliance. The design eliminates redundancy while maintaining data integrity and supporting efficient queries. No structural changes are required for normalization purposes.

The schema balances theoretical normalization principles with practical business requirements, resulting in a robust, scalable database design.