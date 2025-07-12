-- Insert data into the dim_users table
INSERT INTO dim_users(user_id,signup_date,country,device_type) VALUES
(1, '2023-01-01', 'USA', 'mobile'),
(2, '2023-01-02', 'Canada', 'desktop'),
(3, '2023-01-03', 'UK', 'tablet')
(4, '2023-01-04', 'Germany', 'mobile'),
(5, '2023-01-05', 'France', 'desktop'),
(6, '2023-01-06', 'Spain', 'tablet'),
(7, '2023-01-07', 'Italy', 'mobile'),
(8, '2023-01-08', 'Netherlands', 'desktop'),
(9, '2023-01-09', 'Sweden', 'tablet'),
(10, '2023-01-10', 'Norway', 'mobile');

-- Insert data into the dim_products table
INSERT INTO dim_products(product_id, product_name, tier) VALUES
(1, 'Product A', 'free'),
(2, 'Product B', 'premium'),
(3, 'Product C', 'enterprise'),
(4, 'Product D', 'free'),
(5, 'Product E', 'premium')
(6, 'Product F', 'enterprise'),
(7, 'Product G', 'free'),
(8, 'Product H', 'premium'),
(9, 'Product I', 'enterprise'),
(10, 'Product J', 'free');

-- Insert data into the dim_time table
INERT INTO dim_time(date,day_of_week, week, month, year) VALUES
('2023-01-01', 'Sunday', 1, 1, 2023),
('2023-01-02', 'Monday', 1, 1, 2023),
('2023-01-03', 'Tuesday', 1, 1, 2023),
('2023-01-04', 'Wednesday', 1, 1, 2023),
('2023-01-05', 'Thursday', 1, 1, 2023),
('2023-01-06', 'Friday', 1, 1, 2023),
('2023-01-07', 'Saturday', 1, 1, 2023),
('2023-01-08', 'Sunday', 2, 1, 2023),
('2023-01-09', 'Monday', 2, 1, 2023),
('2023-01-10', 'Tuesday', 2, 1, 2023);

-- Insert data into the fact_user_events table
INSERT INTO fact_user_events(user_id, product_id, event_type, event_timestamp) VALUES 
(1, 1, 'signup', '2023-01-01 10:00:00'),
(2, 2, 'login', '2023-01-02 11:00:00'),
(3, 3, 'purchase', '2023-01-03 12:00:00'),
(4, 4, 'upgrade', '2023-01-04 13:00:00'),
(5, 5, 'downgrade', '2023-01-05 14:00:00'),
(6, 6, 'cancel', '2023-01-06 15:00:00'),
(7, 7, 'signup', '2023-01-07 16:00:00'),
(8, 8, 'login', '2023-01-08 17:00:00'),
(9, 9, 'purchase', '2023-01-09 18:00:00'),
(10, 10, 'upgrade', '2023-01-10 19:00:00')
(11, 1, 'cancel', '2023-01-11 20:00:00'),
(12, 2, 'signup', '2023-01-12 21:00:00'),
(13, 3, 'login', '2023-01-13 22:00:00'),
(14, 4, 'purchase', '2023-01-14 23:00:00'),
(15, 5, 'upgrade', '2023-01-15 24:00:00')
(16, 6, 'downgrade', '2023-01-16 01:00:00'),
(17, 7, 'cancel', '2023-01-17 02:00:00'),
(18, 8, 'signup', '2023-01-18 03:00:00'),
(19, 9, 'login', '2023-01-19 04:00:00'),
(20, 10, 'purchase', '2023-01-20 05:00:00')
(21, 1, 'upgrade', '2023-01-21 06:00:00'),
(22, 2, 'downgrade', '2023-01-22 07:00:00'),
(23, 3, 'cancel', '2023-01-23 08:00:00'),
(24, 4, 'signup', '2023-01-24 09:00:00'),
(25, 5, 'login', '2023-01-25 10:00:00')
(26, 6, 'purchase', '2023-01-26 11:00:00'),
(27, 7, 'upgrade', '2023-01-27 12:00:00'),
(28, 8, 'downgrade', '2023-01-28 13:00:00'),
(29, 9, 'cancel', '2023-01-29 14:00:00'),
(30, 10, 'signup', '2023-01-30 15:00:00');
