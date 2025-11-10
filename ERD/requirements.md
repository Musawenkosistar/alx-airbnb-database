# ER Diagram Requirements

## Entities
1. **User**
   - user_id (PK)
   - first_name
   - last_name
   - email (Unique)
   - password_hash
   - phone_number
   - role (ENUM: guest, host, admin)
   - created_at

2. **Property**
   - property_id (PK)
   - host_id (FK → User.user_id)
   - name
   - description
   - location
   - price_per_night
   - created_at
   - updated_at

3. **Booking**
   - booking_id (PK)
   - property_id (FK → Property.property_id)
   - user_id (FK → User.user_id)
   - start_date
   - end_date
   - total_price
   - status (ENUM: pending, confirmed, canceled)
   - created_at

4. **Payment**
   - payment_id (PK)
   - booking_id (FK → Booking.booking_id)
   - amount
   - payment_date
   - payment_method (ENUM: credit_card, paypal, stripe)

5. **Review**
   - review_id (PK)
   - property_id (FK → Property.property_id)
   - user_id (FK → User.user_id)
   - rating (1–5)
   - comment
   - created_at

6. **Message**
   - message_id (PK)
   - sender_id (FK → User.user_id)
   - recipient_id (FK → User.user_id)
   - message_body
   - sent_at

## Relationships
- User (1) → Property (N)
- User (1) → Booking (N)
- Property (1) → Booking (N)
- Booking (1) → Payment (1)
- Property (1) → Review (N)
- User (1) → Review (N)
- User (1) → Message (N, as sender)
- User (1) → Message (N, as recipient)

