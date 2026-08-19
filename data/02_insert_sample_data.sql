USE SQLPracticeDB;

INSERT INTO Customers (first_name, last_name, email, city, country) VALUES
('Anna', 'Kowalska', 'anna.kowalska@mail.com', 'Warszawa', 'Poland'),
('Piotr', 'Nowak', 'piotr.nowak@mail.com', 'Kraków', 'Poland'),
('Maria', 'Wiśniewska', 'maria.w@mail.com', 'Gdańsk', 'Poland'),
('John', 'Smith', 'john.smith@mail.com', 'London', 'UK'),
('Emma', 'Johnson', 'emma.j@mail.com', 'Manchester', 'UK');

INSERT INTO Categories (category_name) VALUES
('Electronics'), ('Books'), ('Clothing'), ('Home & Garden');

INSERT INTO Products (product_name, category_id, price, stock_quantity) VALUES
('Laptop Dell XPS', 1, 4500.00, 15),
('Wireless Mouse', 1, 89.99, 120),
('SQL Cookbook', 2, 129.00, 40),
('T-Shirt Cotton', 3, 49.99, 200),
('Garden Chair', 4, 199.00, 30);

INSERT INTO Orders (customer_id, order_date, status) VALUES
(1, '2026-06-01', 'Completed'),
(2, '2026-06-03', 'Completed'),
(1, '2026-06-10', 'Pending'),
(3, '2026-06-12', 'Completed'),
(4, '2026-07-01', 'Cancelled'),
(5, '2026-07-05', 'Completed');

INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 4500.00),
(1, 2, 2, 89.99),
(2, 3, 3, 129.00),
(3, 4, 5, 49.99),
(4, 5, 1, 199.00),
(4, 2, 1, 89.99),
(6, 1, 1, 4500.00);

INSERT INTO Payments (order_id, payment_date, amount, payment_method) VALUES
(1, '2026-06-01', 4679.98, 'Credit Card'),
(2, '2026-06-03', 387.00, 'PayPal'),
(4, '2026-06-12', 288.99, 'Credit Card'),
(6, '2026-07-05', 4500.00, 'Bank Transfer');
