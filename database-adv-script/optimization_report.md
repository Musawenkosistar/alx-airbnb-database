# Query Optimization Report

## Overview
This report documents the process of analyzing and optimizing a complex SQL query in the Airbnb database system. The objective was to improve query performance by reducing execution time and minimizing unnecessary data processing.

---

## Initial Query Analysis

The initial query retrieved all bookings along with user, property, and payment details. While functionally correct, the query exhibited several inefficiencies:

### Identified Issues
- No filtering conditions, resulting in full table scans
- Retrieval of unnecessary columns
- Multiple joins on large tables without optimization
- Increased I/O cost and execution time

The `EXPLAIN` command revealed that the database engine performed sequential scans on multiple tables, indicating suboptimal performance.

---

## Optimization Strategy

The following improvements were applied:

- Selected only required columns instead of using full entity data
- Added a `WHERE` clause on the `check_in` column to reduce scanned rows
- Leveraged indexed columns for joins and filtering
- Used a `LEFT JOIN` for payments to avoid excluding bookings without payment records

---

## Optimized Query Results

After refactoring the query, the `EXPLAIN` analysis showed:

- Reduced number of rows scanned
- Improved use of indexes
- Lower estimated execution cost
- Faster query execution time

These improvements demonstrate how thoughtful query design and indexing significantly enhance database performance in high-volume systems.

---

## Conclusion

Optimizing complex queries is essential for scalable backend systems. By minimizing unnecessary joins, reducing selected columns, and applying indexed filters early, query performance can be greatly improved. This exercise reinforces best practices for writing efficient SQL in production environments.

