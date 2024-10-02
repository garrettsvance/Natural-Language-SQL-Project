-- Populate Customer table
INSERT INTO Customer (customer_id, first_name, last_name, phone_number, join_date) VALUES
(1, 'John', 'Doe', '555-0101', '2022-01-15'),
(2, 'Jane', 'Smith', '555-0102', '2022-02-20'),
(3, 'Alice', 'Johnson', '555-0103', '2022-03-10'),
(4, 'Bob', 'Brown', '555-0104', '2022-04-05'),
(5, 'Carol', 'Davis', '555-0105', '2022-05-12');

-- Populate Service table
INSERT INTO Service (service_id, service_name, description, duration, price) VALUES
(1, 'Haircut', 'Basic haircut service', 30, 50.00),
(2, 'Color', 'Hair coloring service', 90, 120.00),
(3, 'Styling', 'Hair styling for special occasions', 60, 80.00),
(4, 'Manicure', 'Basic manicure service', 45, 40.00),
(5, 'Pedicure', 'Basic pedicure service', 60, 50.00);

-- Populate Stylist table
INSERT INTO Stylist (stylist_id, first_name, last_name, phone_number, hire_date, salary) VALUES
(1, 'Emma', 'Wilson', '555-1001', '2021-01-10', 45000.00),
(2, 'Michael', 'Taylor', '555-1002', '2021-03-15', 48000.00),
(3, 'Sophia', 'Anderson', '555-1003', '2021-06-20', 42000.00),
(4, 'Daniel', 'Thomas', '555-1004', '2021-09-05', 46000.00),
(5, 'Olivia', 'Martinez', '555-1005', '2022-01-15', 44000.00);

-- Populate Appointment table
INSERT INTO Appointment (appointment_id, customer_id, stylist_id, service_id, appointment_date, total_price) VALUES
(1, 1, 1, 1, '2023-06-01', 50.00),
(2, 2, 2, 2, '2023-06-02', 120.00),
(3, 3, 3, 3, '2023-06-03', 80.00),
(4, 4, 4, 4, '2023-06-04', 40.00),
(5, 5, 5, 5, '2023-06-05', 50.00),
(6, 1, 2, 1, '2023-06-06', 50.00),
(7, 2, 3, 2, '2023-06-07', 120.00),
(8, 3, 4, 3, '2023-06-08', 80.00),
(9, 4, 5, 4, '2023-06-09', 40.00),
(10, 5, 1, 5, '2023-06-10', 50.00);

-- Populate Payment table
INSERT INTO Payment (payment_id, appointment_id, payment_date, amount_paid) VALUES
(1, 1, '2023-06-01', 50.00),
(2, 2, '2023-06-02', 120.00),
(3, 3, '2023-06-03', 80.00),
(4, 4, '2023-06-04', 40.00),
(5, 5, '2023-06-05', 50.00),
(6, 6, '2023-06-06', 50.00),
(7, 7, '2023-06-07', 120.00),
(8, 8, '2023-06-08', 80.00),
(9, 9, '2023-06-09', 40.00),
(10, 10, '2023-06-10', 50.00);