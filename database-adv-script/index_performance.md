# Index Performance Analysis

## Objective
Evaluate query performance before and after adding indexes to frequently accessed columns
in the Users, Bookings, and Properties tables.

---

## Queries Analyzed

### 1. Retrieve bookings by user
```sql
SELECT *
FROM bookings
WHERE user_id = 5;
