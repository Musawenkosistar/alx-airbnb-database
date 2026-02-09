# Airbnb Database Normalization

## Step 1: First Normal Form (1NF)
- All attributes have atomic values.
- Each table has a primary key to uniquely identify rows.
- Example: `User` table has `user_id` as PK, no repeating groups.

## Step 2: Second Normal Form (2NF)
- All non-key attributes depend on the entire primary key.
- Example: `Booking` table: `start_date`, `end_date`, `status` depend entirely on `booking_id`.

## Step 3: Third Normal Form (3NF)
- Removed transitive dependencies.
- No non-key attribute depends on another non-key attribute.
- Example: `Payment` table depends only on `booking_id` (PK) for `amount`, `payment_date`, `method`, `status`.

## Summary
- All tables (`User`, `Property`, `Booking`, `Payment`, `Review`) are in 3NF.
- Redundancy is minimized, and data integrity is maintained.
