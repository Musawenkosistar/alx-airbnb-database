# Database Schema for Airbnb-like Application

This schema defines the relational database for the ALX Airbnb project. It includes the following entities:

- **Users**: Stores information about users (hosts and guests)
- **Properties**: Stores property listings, linked to the host user
- **Bookings**: Tracks property bookings made by users
- **Payments**: Tracks payments related to bookings

All tables are normalized to 3NF, with primary keys, foreign keys, and relevant indexes for performance. The schema is designed for PostgreSQL.
