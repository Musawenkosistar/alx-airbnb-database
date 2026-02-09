-- Users
INSERT INTO users (first_name, last_name, email, password)
VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', 'password123'),
('Bob', 'Smith', 'bob.smith@example.com', 'password123'),
('Charlie', 'Brown', 'charlie.brown@example.com', 'password123');

-- Properties
INSERT INTO properties (user_id, title, description, price, location)
VALUES
(1, 'Cozy Cottage', 'A cozy cottage in the countryside', 120.00, 'Port Elizabeth'),
(1, 'Beachfront Villa', 'Luxury villa with ocean view', 350.00, 'Durban'),
(2, 'Downtown Apartment', 'Modern apartment in the city center', 200.00, 'Johannesburg'),
(3, 'Mountain Cabin', 'Secluded cabin in the mountains', 150.00, 'Drakensberg');

-- Bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date)
VALUES
(2, 1, '2026-02-10', '2026-02-15'),
(3, 1, '2026-03-01', '2026-03-05'),
(1, 3, '2026-02-20', '2026-02-25');

-- Payments
INSERT INTO payments (booking_id, amount, status)
VALUES
(1, 600.00, 'completed'),
(2, 480.00, 'completed'),
(3, 750.00, 'pending');

