USE task2;

-- Inserted 20 rows of data for flipkart table
INSERT INTO flipkart (product_id, product_name, category, price, quantity, brand_name, product_description, seller_id, seller_name, rating, created_date, color, weight, warranty_in_years)
VALUES
(1, 'Samsung Galaxy S20', 'Electronics', 69900, 10, 'Samsung', 'Powerful smartphone.', 1, 'ABC Electronics', 4, '2022-01-01', 'Black', 163, 1),
(2, 'Sony Bravia 4K Smart TV', 'Electronics', 89999, 5, 'Sony', 'High-definition smart TV.', 2, 'XYZ Electronics', 4, '2022-02-01', 'Silver', 1800, 2),
(3, 'Apple MacBook Pro', 'Electronics', 129999, 8, 'Apple', 'Powerful laptop.', 3, 'DEF Electronics', 5, '2022-03-01', 'Space Gray', 1500, 3),
(4, 'Nike Air Max 270', 'Fashion', 7999, 20, 'Nike', 'Stylish sports shoes.', 4, 'Shoe Hub', 4, '2022-04-01', 'White', 400, 1),
(5, 'Canon EOS 80D DSLR', 'Electronics', 69999, 3, 'Canon', 'High-quality DSLR camera.', 5, 'Camera World', 5, '2022-05-01', 'Black', 730, 2),
(6, 'LG 55-inch 4K Smart TV', 'Electronics', 54999, 7, 'LG', 'Smart TV with vivid colors.', 6, 'PQR Electronics', 4, '2022-06-01', 'Black', 2000, 2),
(7, 'Levis Mens Jeans', 'Fashion', 2999, 15, 'Levi''s', 'Classic denim jeans.', 7, 'Fashion Hub', 4, '2022-07-01', 'Blue', 500, 1),
(8, 'Sony WH-1000XM4 Headphones', 'Electronics', 24990, 2, 'Sony', 'Wireless headphones with noise cancellation.', 8, 'Audio World', 5, '2022-08-01', 'Black', 250, 2),
(9, 'Apple iPhone 12 Pro', 'Electronics', 99999, 6, 'Apple', 'Advanced smartphone.', 9, 'MNO Electronics', 4, '2022-09-01', 'Pacific Blue', 189, 2),
(10, 'Adidas Ultraboost 21', 'Fashion', 12999, 12, 'Adidas', 'Running shoes for performance and comfort.', 10, 'Sports World', 5, '2022-10-01', 'Gray', 340, 1),
(11, 'Dell XPS 15 Laptop', 'Electronics', 119999, 4, 'Dell', 'High-performance laptop.', 11, 'GHI Electronics', 4, '2022-11-01', 'Silver', 1800, 3),
(12, 'Samsung 32-inch LED TV', 'Electronics', 15999, 9, 'Samsung', 'LED TV with sharp picture quality.', 12, 'JKL Electronics', 4, '2022-12-01', 'Black', 400, 2),
(13, 'Ray-Ban Wayfarer Sunglasses', 'Fashion', 6999, 18, 'Ray-Ban', 'Classic sunglasses.', 13, 'Sunglass World', 5, '2023-01-01', 'Black', 30, 1),
(14, 'Fitbit Versa 3 Smartwatch', 'Electronics', 19999, 6, 'Fitbit', 'Smartwatch with health and fitness features.', 14, 'Health Gadgets', 4, '2023-02-01', 'Midnight Blue', 48, 2),
(15, 'Puma Mens T-Shirt', 'Fashion', 999, 25, 'Puma', 'Comfortable and stylish t-shirt.', 15, 'Fashion Store', 3, '2023-03-01', 'Red', 150, 1),
(16, 'OnePlus 9 Pro', 'Electronics', 69999, 7, 'OnePlus', 'Flagship smartphone.', 16, 'Mobile Hub', 4, '2023-04-01', 'Morning Mist', 197, 2),
(17, 'Bose QuietComfort 35 II', 'Electronics', 29990, 3, 'Bose', 'Wireless headphones with excellent sound.', 17, 'Audio World', 5, '2023-05-01', 'Silver', 234, 2),
(18, 'Casio G-Shock Watch', 'Fashion', 7999, 10, 'Casio', 'Durable and rugged watch.', 18, 'Watch Empire', 4, '2023-06-01', 'Black', 72, 2),
(19, 'LG 1.5 Ton Split AC', 'Electronics', 39999, 4, 'LG', 'Energy-efficient air conditioner.', 19, 'Cooling Solutions', 5, '2023-07-01', 'White', 560, 2),
(20, 'Nike Sportswear Hoodie', 'Fashion', 3499, 15, 'Nike', 'Comfortable hoodie for sports.', 20, 'Sportswear Store', 4, '2023-08-01', 'Gray', 400, 1);

SELECT * FROM flipkart;

-- 5 WHERE Clause
SELECT * FROM flipkart WHERE product_id = 3;
SELECT * FROM flipkart WHERE category = 'Fashion';
SELECT * FROM flipkart WHERE rating = 4;
SELECT * FROM flipkart WHERE seller_id = 5;
SELECT * FROM flipkart WHERE color = 'Black';
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Inserted 20 rows of data for bank table
INSERT INTO bank (account_number, account_holder_name, account_balance, branch_name, IFSC_code, PAN_number, Aadhaar_number, contact_number, email_id, address, opening_date, last_transaction_date)
VALUES 
(1234567890123456, 'Rajesh Kumar', 50000, 'Mumbai Main Branch', 'SBIN0001234', 'ABCDE1234F', '123456789012', '9876543210', 'rajeshkumar@email.com', '123, Main Street, Mumbai', '2022-01-01', '2022-06-01'),
(2345678901234567, 'Priya Singh', 75000, 'Delhi Main Branch', 'HDFC0005678', 'ABCDE5678G', '234567890123', '9876543211', 'priyasingh@email.com', '456, Park Avenue, Delhi', '2022-02-01', '2022-06-02'),
(3456789012345678, 'Amit Patel', 100000, 'Bangalore Main Branch', 'IC0009012', 'ABCDE9012H', '345678901234', '9876543212', 'amitpatel@email.com', '789, High Street, Bangalore', '2022-03-01', '2022-06-03'),
(4567890123456789, 'Sneha Sharma', 25000, 'Chennai Main Branch', 'AXIS0003456', 'ABCDE3456J', '456789012345', '9876543213', 'snehasharma@email.com', '321, Low Street, Chennai', '2022-04-01', '2022-06-04'),
(5678901234567890, 'Rahul Gupta', 5000, 'Hyderabad Main Branch', 'KKBK0006789', 'ABCDE6789', '567890123456', '9876543214', 'rahulgupta@email.com', '654, Middle Street, Hyderabad', '2022-05-01', '2022-06-05'),
(6789012345678901, 'Anjali Verma', 10000, 'Pune Main Branch', 'SBIN0005678', 'ABCDE5678L', '678901234567', '9876543215', 'anjaliverma@email.com', '987, North Street, Pune', '2022-06-01', '2022-06-06'),
(7893456789012, 'Vikram Singh', 20000, 'Kolkata Main Branch', 'HDFC0001234', 'ABCDE1234G', '789012345678', '9876543216', 'vikramsingh@email.com', '654, South Street, Kolkata', '2022-07-01', '2022-06-07'),
(8901234567890123, 'Neha Sharma', 30000, 'Chandigarh Main Branch', 'ICIC0003456', 'ABCDE3456K', '890123456789', '9876543217', 'nehasharma@email.com', '321, East Street, Chandigarh', '2022-08-01', '2022-06-08'),
(9012345678901234, 'Rajat Gupta',40000, 'Jaipur Main Branch', 'AXIS0006789', 'ABCDE6789L', '901234567890', '9876543218', 'rajatgupta@email.com', '987, West Street, Jaipur', '2022-09-01', '2022-06-09'),
(1234567890123456, 'Sarika Singh', 50000, 'Lucknow Main Branch', 'KKBK0001234', 'ABCDE1234', '123456789012', '9876543219', 'sarikasingh@email.com', '123, Main Street, Lucknow', '2022-10-01', '2022-06-10'),
(2345678901234567, 'Alok Sharma', 75000, 'Ahmedabad Main Branch', 'SBIN0005678', 'ABCDE5678M', '234567890123', '9876543220', 'aloksharma@email.com', '456, Park Avenue, Ahmedabad', '2022-11-01', '2022-06-11'),
(3456789012345678, 'Nisha Patel', 100000, 'Surat Main Branch', 'HDFC0009012', 'ABCDE9012J', '345678901234', '9876543221', 'nishapatel@email.com', '789, High Street, Surat', '2022-12-01', '2022-06-12'),
(4567890123456789, 'Ravi Kumar', 25000, 'Nagpur Main Branch', 'ICIC0006789', 'ABCDE6789M', '456789345675', '9876543222', 'ravikumar@email.com', '321, Low Street, Nagpur', '2023-01-01', '2022-06-13'),
(5678901234567890, 'Smita Verma', 5000, 'ore Main Branch', 'AXIS0001234', 'ABCDE1234K', '567890123456', '9876543223', 'smitaverma@email.com', '654, Middle Street, Indore', '2023-02-01', '2022-06-14'),
(6789012345678901, 'Amita Singh', 10000, 'Bhopal Main Branch', 'KKBK0005678', 'ABCDE5678N', '678901234567', '9876543224', 'amitasingh@email.com', '987, North Street, Bhopal', '2023-03-01', '2022-06-15'),
(7890123456789012, 'Rahul Verma', 20000, 'Patna Main Branch', 'SBIN0003456', 'ABCDE3456', '789012345678', '9876543225', 'rahulverma@email.com', '654, South Street, Patna', '2023-04-01', '2022-06-16'),
(8901234567890123, 'Neha Gupta', 30000, 'Raipur Main Branch', 'HDFC0006789', 'ABCDE6789M', '890123456789', '9876543226', 'nehagupta@email.com', '321, East Street, Raipur', '2023-05-01', '2022-06-17'),
(9012345678901234, 'Rajat Singh', 40000, 'Ranchi Main Branch', 'ICIC0001234', 'ABCDE1234J', '901234567890', '9876543227', 'rajatsingh@email.com', '987, West Street, Ranchi', '2023-06-01', '2022-06-18'),
(1234567890123456, 'Sarika Gupta', 50000, 'Guwahati Main Branch', 'AXIS0005678', 'ABCDE5678N', '123456789012', '9876543228', 'sarikagupta@email.com', '123, Main Street, Guwahati', '2023-07-01', '2022-06-19'),
(2345678901234567, 'Alok Singh',75000, 'Bhubaneswar Main Branch', 'KKBK0009012', 'ABCDE9012K', '234567890123', '9876543229', 'aloksingh@email.com', '456, Park Avenue, Bhubaneswar', '2023-08-01', '2022-06-20');

SELECT * FROM bank;

-- 5 WHERE Clause
SELECT * FROM bank WHERE IFSC_code = 'SBIN0001234';
SELECT * FROM bank WHERE account_balance = 50000;
SELECT * FROM bank WHERE branch_name = 'Bangalore Main Branch';
SELECT * FROM bank WHERE email_id = 'snehasharma@email.com';
SELECT * FROM bank WHERE PAN_number = 'ABCDE5678G';
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Inserted 20 rows of data for cricket table
INSERT INTO cricket (player_id, player_name, country, age, player_role, matches_played, total_runs, wickets_taken, team_name, catches, run_outs)
VALUES
(1, 'Virat Kohli', 'India', 33, 'Batsman', 254, 12169, 4, 'Royal Challengers Bangalore', 45, 10),
(2, 'Kane Williamson', 'New Zealand', 31, 'Batsman', 157, 6728, 28, 'Sunrisers Hyderabad', 35, 5),
(3, 'Steve Smith', 'Australia', 32, 'Batsman', 136, 5897, 8, 'Delhi Capitals', 20, 3),
(4, 'Joe Root', 'England', 30, 'Batsman', 110, 5898, 37, 'Kolkata Knight Riders', 40, 12),
(5, 'David Warner', 'Australia', 34, 'Batsman', 142, 5447, 1, 'Sunrisers Hyderabad', 30, 8),
(6, 'Babar Azam', 'Pakistan', 26, 'Batsman', 86, 3808, 0, 'Mumbai Indians', 15, 5),
(7, 'Kieron Pollard', 'West Indies', 34, 'All-rounder', 180, 3133, 60, 'Mumbai Indians', 45, 10),
(8, 'Jasprit Bumrah', 'India', 27, 'Bowler', 118, 34, 120, 'Mumbai Indians', 10, 2),
(9, 'Rashid Khan', 'Afghanistan', 23, 'Bowler', 82, 191, 95, 'Sunrisers Hyderabad', 5, 3),
(10, 'Pat Cummins', 'Australia', 28, 'Bowler', 97, 228, 109, 'Kolkata Knight Riders', 8, 2),
(11, 'Ross Taylor', 'New Zealand', 37, 'Batsman', 108, 8570, 2, 'Chennai Super Kings', 30, 6),
(12, 'Shakib Al Hasan', 'Bangladesh', 34, 'All-rounder', 82, 1693, 99, 'Kolkata Knight Riders', 25, 10),
(13, 'Kusal Perera', 'Sri Lanka', 31, 'Batsman', 101, 2750, 1, 'Rajasthan Royals', 15, 4),
(14, 'Faf du Plessis', 'South Africa', 36, 'Batsman', 69, 1851, 0, 'Chennai Super Kings', 25, 5),
(15, 'Kagiso Rabada', 'South Africa', 26, 'Bowler', 60, 15, 95, 'Delhi Capitals', 3, 2),
(16, 'Rohit Sharma', 'India', 34, 'Batsman', 227, 5537, 8, 'Mumbai Indians', 20, 7),
(17, 'Quinton de Kock', 'South Africa', 29, 'Batsman', 109, 2988, 0, 'Royal Challengers Bangalore', 25, 9),
(18, 'Shikhar Dhawan', 'India', 35, 'Batsman', 176, 5480, 4, 'Delhi Capitals', 25, 12),
(19, 'Andre Russell', 'West Indies', 33, 'All-rounder', 81, 1637, 64, 'Kolkata Knight Riders', 15, 6),
(20, 'Mitchell Starc', 'Australia', 31, 'Bowler', 61, 91, 111, 'Royal Challengers Bangalore', 5, 3);

SELECT * FROM cricket;

-- 5 WHERE Clause
SELECT * FROM cricket WHERE country = 'India';
SELECT * FROM cricket WHERE player_role = 'Batsman';
SELECT * FROM cricket WHERE total_runs = 5000;
SELECT * FROM cricket WHERE age = 33;
SELECT * FROM cricket WHERE team_name = 'Mumbai Indians';
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------