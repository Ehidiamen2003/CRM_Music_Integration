-- Insert customer data
INSERT INTO Customers (name, email, phone, address, favorite_genre, preferred_artist) 
VALUES 
('Ehi Onoa', 'ehionoa@gmail.com', '123-456-7890', '123 Main St, Cityville', 'R&B', 'Chris Brown'),
('Kai G', 'kaig@gmail.com', '234-567-8901', '456 Elm St, Townplace', 'R&B', 'SZA'),
('Phinehas Poku', 'phinehaspoku@gmail.com', '345-678-9012', '789 Oak St, Suburbia', 'Alternative Hip Hop', 'Isaiah Rashad'),
('Melissa Louange', 'melissalouange@gmail.com', '456-789-0123', '101 Pine St, Village', 'Jpop', 'LISA'),
('Olivia Carter', 'oliviacarter@gmail.com', '567-890-1234', '202 Birch St, Uptown', 'R&B', 'Summer Walker'),
('Kadi Jolie', 'kadijolie@gmail.com', '678-901-2345', '303 Cedar St, Downtown', 'Alternative Hip Hop', 'Kendrick Lamar'),
('Kary Delai', 'karydelai@gmail.com', '789-012-3456', '404 Maple St, Midtown', 'R&B', 'Bryson Tiller');

-- Insert product data (Example products for sales)
INSERT INTO Products (name, category, price, stock_quantity)
VALUES
('Chris Brown - Indigo', 'Music', 9.99, 100),
('SZA - Ctrl', 'Music', 8.99, 120),
('Isaiah Rashad - The Sun’s Tirade', 'Music', 7.99, 80),
('LISA - LALISA', 'Music', 6.99, 150),
('Summer Walker - Over It', 'Music', 9.99, 90),
('Kendrick Lamar - DAMN.', 'Music', 10.99, 60),
('Bryson Tiller - True to Self', 'Music', 7.99, 110);

-- Insert sales data
INSERT INTO Sales (customer_id, product_id, quantity, total_price, sale_date)
VALUES
(1, 1, 2, 19.98, '2025-02-05'),
(2, 2, 1, 8.99, '2025-02-06'),
(3, 3, 3, 23.97, '2025-02-07'),
(4, 4, 1, 6.99, '2025-02-08'),
(5, 5, 1, 9.99, '2025-02-09'),
(6, 6, 1, 10.99, '2025-02-10'),
(7, 7, 2, 15.98, '2025-02-11');

-- Insert music purchase data
INSERT INTO MusicPurchases (customer_id, album_name, artist, genre, purchase_date)
VALUES
(1, 'Indigo', 'Chris Brown', 'R&B', '2025-02-05'),
(2, 'Ctrl', 'SZA', 'R&B', '2025-02-06'),
(3, 'The Sun’s Tirade', 'Isaiah Rashad', 'Alternative Hip Hop', '2025-02-07'),
(4, 'LALISA', 'LISA', 'Jpop', '2025-02-08'),
(5, 'Over It', 'Summer Walker', 'R&B', '2025-02-09'),
(6, 'DAMN.', 'Kendrick Lamar', 'Alternative Hip Hop', '2025-02-10'),
(7, 'True to Self', 'Bryson Tiller', 'R&B', '2025-02-11');

-- Insert streaming history data (varied)
INSERT INTO StreamingHistory (customer_id, song_name, artist, genre, stream_date)
VALUES
(1, 'Under the Influence', 'Chris Brown', 'R&B', '2025-02-01'),
(2, 'Good Days', 'SZA', 'R&B', '2025-02-02'),
(3, 'Wat’s Wrong', 'Isaiah Rashad', 'Alternative Hip Hop', '2025-02-03'),
(4, 'LALISA', 'LISA', 'Jpop', '2025-02-04'),
(5, 'Playing Games (with Summer Walker)', 'Summer Walker', 'R&B', '2025-02-05'),
(6, 'HUMBLE.', 'Kendrick Lamar', 'Alternative Hip Hop', '2025-02-06'),
(7, 'Exchange', 'Bryson Tiller', 'R&B', '2025-02-07');

-- Insert event data
INSERT INTO Events (event_name, artist, venue, event_date, tickets_sold)
VALUES
('Chris Brown Live', 'Chris Brown', 'Staples Center, LA', '2025-05-20', 5000),
('SZA in Concert', 'SZA', 'Madison Square Garden, NY', '2025-06-15', 4000),
('Isaiah Rashad Tour', 'Isaiah Rashad', 'The Fillmore, SF', '2025-07-10', 3000),
('LISA World Tour', 'LISA', 'Tokyo Dome, Japan', '2025-08-05', 6000),
('Summer Walker Show', 'Summer Walker', 'Hollywood Bowl, LA', '2025-09-12', 3500),
('Kendrick Lamar Concert', 'Kendrick Lamar', 'Barclays Center, NY', '2025-10-01', 4500),
('Bryson Tiller Live', 'Bryson Tiller', 'Banc of California Stadium, LA', '2025-11-10', 4000);

-- Insert event attendance data
INSERT INTO EventAttendance (customer_id, event_id, ticket_purchased)
VALUES
(1, 1, TRUE),
(2, 2, TRUE),
(3, 3, TRUE),
(4, 4, TRUE),
(5, 5, TRUE),
(6, 6, TRUE),
(7, 7, TRUE);
