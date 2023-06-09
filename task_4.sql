use task2;

-- flipkart table
-- 5 Update Queries
UPDATE flipkart SET price = 64900 WHERE product_name = 'Samsung Galaxy S20';
UPDATE flipkart SET quantity = 10 WHERE product_name = 'Sony Bravia 4K Smart TV';
UPDATE flipkart SET rating = 4 WHERE product_name = 'Canon EOS 80D DSLR';
UPDATE flipkart SET seller_name = 'Sports World 1' WHERE product_name = 'Adidas Ultraboost 21';
UPDATE flipkart SET quantity = 30 WHERE product_name = 'Puma Mens T-Shirt';

-- 3 Update Queries Using AND
UPDATE flipkart SET rating = 4, seller_name = 'XYZ Electronics' WHERE product_name = 'Canon EOS 80D DSLR' AND category = 'Electronics';
UPDATE flipkart SET price = 10999, seller_name = 'Sports World' WHERE product_name = 'Adidas Ultraboost 21' AND brand_name = 'Adidas';
UPDATE flipkart SET rating = 5, seller_name = 'GHI Electronics' WHERE product_name = 'Apple iPhone 12 Pro' AND category = 'Electronics';

-- 3 Update Queries Using OR
UPDATE flipkart SET price = 95000, seller_name = 'XYZ Electronics' WHERE product_name = 'Sony Bravia 4K Smart TV' OR brand_name = 'Sony';
UPDATE flipkart SET quantity = 25, seller_name = 'Sports World' WHERE product_name = 'Nike Air Max 270' OR category = 'Fashion';
UPDATE flipkart SET seller_name = 'Fashion Empire', quantity = 20 WHERE product_name = 'Levis Mens Jeans' OR category = 'Fashion';

-- 5 DELETE Queries
DELETE FROM flipkart WHERE product_id = 8;
DELETE FROM flipkart WHERE rating = 4;
DELETE FROM flipkart WHERE category = 'Electronics';
DELETE FROM flipkart WHERE quantity = 5;
DELETE FROM flipkart WHERE seller_name = 'ABC Electronics';

-- 5 AND Queries
SELECT * FROM flipkart WHERE category = 'Electronics' AND rating = 4;
SELECT * FROM flipkart WHERE quantity = 10 AND price = 5000;
SELECT * FROM flipkart WHERE created_date = '2023-01-01' AND warranty_in_years = 2;
SELECT * FROM flipkart WHERE rating = 5 AND category = 'Fashion';
SELECT * FROM flipkart WHERE weight = 500 AND warranty_in_years = 1;

-- 5 OR Queries
SELECT * FROM flipkart WHERE category = 'Electronics' OR category = 'Fashion';
SELECT * FROM flipkart WHERE rating = 4 OR rating = 5;
SELECT * FROM flipkart WHERE price = 7999 OR price = 129999;
SELECT * FROM flipkart WHERE quantity = 10 OR quantity = 15;
SELECT * FROM flipkart WHERE warranty_in_years = 1 OR warranty_in_years = 2;

-- 5 IN Queries
SELECT * FROM flipkart WHERE category IN ('Electronics', 'Fashion');
SELECT * FROM flipkart WHERE rating IN (4, 5);
SELECT * FROM flipkart WHERE price IN (7999, 129999, 19999);
SELECT * FROM flipkart WHERE quantity IN (10, 15, 20);
SELECT * FROM flipkart WHERE warranty_in_years IN (1, 3);

-- 5 NOT IN Queries
SELECT * FROM flipkart WHERE category NOT IN ('Electronics', 'Fashion');
SELECT * FROM flipkart WHERE rating NOT IN (4, 5);
SELECT * FROM flipkart WHERE price NOT IN (7999, 129999, 19999);
SELECT * FROM flipkart WHERE quantity NOT IN (10, 15, 20);
SELECT * FROM flipkart WHERE warranty_in_years NOT IN (1, 3);

-- 5 BETWEEN Queries
SELECT * FROM flipkart WHERE price BETWEEN 5000 AND 10000;
SELECT * FROM flipkart WHERE rating BETWEEN 4 AND 5;
SELECT * FROM flipkart WHERE quantity BETWEEN 5 AND 10;
SELECT * FROM flipkart WHERE weight BETWEEN 100 AND 500;
SELECT * FROM flipkart WHERE warranty_in_years BETWEEN 1 AND 2;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- bank table 
-- 5 Update Queries
UPDATE bank SET account_balance = 60000 WHERE account_number = 1234567890123450;
UPDATE bank SET branch_name = 'Delhi Central Branch' WHERE account_number = 2345678901234560;
UPDATE bank SET email_id = 'amit.patel@email.com' WHERE account_number = 3456789012345670;
UPDATE bank SET PAN_number = 'FGHIJ5678' WHERE account_number = 4567890123456780;
UPDATE bank SET opening_date = '2023-01-06' WHERE account_number = 5678901234567890;

-- 3 Update Queries Using AND
UPDATE bank SET account_balance = 70000, branch_name = 'Mumbai Central Branch' WHERE account_number = 1234567890123450 AND branch_name = 'Mumbai Main Branch';
UPDATE bank SET contact_number = '9876543212', email_id = 'priyas@gmail.com' WHERE account_number = 2345678901234560 AND branch_name = 'Delhi Main Branch';
UPDATE bank SET account_balance = 110000, IFSC_code = 'IC0009013' WHERE account_number = 3456789012345670 AND branch_name = 'Bangalore Main Branch';

-- 3 Update Queries Using OR
UPDATE bank SET account_balance = 30000 WHERE account_number = 4567890123456780 OR branch_name = 'Chennai Central Branch';
UPDATE bank SET contact_number = '9876543223' WHERE account_number = 5678901234567890 OR email_id = 'smita.verma@gmail.com';
UPDATE bank SET account_balance = 20000 WHERE account_number = 6789012345678900 OR IFSC_code = 'KKBK0006000';

-- 5 DELETE Queries
DELETE FROM bank WHERE account_holder_name = 'Rajesh Kumar';
DELETE FROM bank WHERE IFSC_code = 'HDFC0005678';
DELETE FROM bank WHERE PAN_number = 'ABCDE3456J';
DELETE FROM bank WHERE account_balance = 25000;
DELETE FROM bank WHERE branch_name = 'Hyderabad Main Branch';

-- 5 AND Queries
SELECT * FROM bank WHERE account_balance = 50000 AND IFSC_code = 'SBIN0001234';
SELECT * FROM bank WHERE opening_date = '2022-01-01' AND Aadhaar_number = '345678901234';
SELECT * FROM bank WHERE PAN_number = 'ABCDE1234F' AND last_transaction_date = '2022-06-01';
SELECT * FROM bank WHERE account_balance = 25000 AND branch_name = 'Chennai Main Branch';
SELECT * FROM bank WHERE contact_number = '9876543210' AND opening_date = '2022-01-01';

-- 5 OR Queries
SELECT * FROM bank WHERE account_balance = 50000 OR IFSC_code = 'SBIN0001234';
SELECT * FROM bank WHERE opening_date = '2022-01-01' OR Aadhaar_number = '345678901234';
SELECT * FROM bank WHERE PAN_number = 'ABCDE1234F' OR last_transaction_date = '2022-06-01';
SELECT * FROM bank WHERE account_balance = 25000 OR branch_name = 'Chennai Main Branch';
SELECT * FROM bank WHERE contact_number = '9876543210' OR opening_date = '2022-01-01';

-- 5 IN Queries
SELECT * FROM bank WHERE account_balance IN (50000, 75000);
SELECT * FROM bank WHERE PAN_number IN ('ABCDE5678G', 'ABCDE9012H');
SELECT * FROM bank WHERE IFSC_code IN ('SBIN0001234', 'HDFC0005678');
SELECT * FROM bank WHERE opening_date IN ('2022-01-01', '2023-01-01');
SELECT * FROM bank WHERE Aadhaar_number IN ('567890123456', '901234567890');

-- 5 NOT IN Queries
SELECT * FROM bank WHERE account_balance NOT IN (50000, 75000);
SELECT * FROM bank WHERE PAN_number NOT IN ('ABCDE5678G', 'ABCDE9012H');
SELECT * FROM bank WHERE IFSC_code NOT IN ('SBIN0001234', 'HDFC0005678');
SELECT * FROM bank WHERE opening_date NOT IN ('2022-01-01', '2023-01-01');
SELECT * FROM bank WHERE Aadhaar_number NOT IN ('567890123456', '901234567890');

-- 5 BETWEEN Queries
SELECT * FROM bank WHERE account_balance BETWEEN 50000 AND 75000;
SELECT * FROM bank WHERE opening_date BETWEEN '2022-01-01' AND '2022-12-31';
SELECT * FROM bank WHERE account_balance BETWEEN 10000 AND 50000;
SELECT * FROM bank WHERE opening_date BETWEEN '2022-07-01' AND '2022-12-31';
SELECT * FROM bank WHERE account_balance BETWEEN 5000 AND 20000;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- cricket table 
-- 5 Update Queries
UPDATE cricket SET team_name = 'Royal Challengers Bengaluru' WHERE player_id = 1;
UPDATE cricket SET age = 32 WHERE player_id = 2;
UPDATE cricket SET player_role = 'Bowler' WHERE player_id = 3;
UPDATE cricket SET total_runs = 6000 WHERE player_id = 4;
UPDATE cricket SET catches = 35 WHERE player_id = 5;

-- 3 Update Queries Using AND
UPDATE cricket SET age = 27, total_runs = 4000 WHERE player_id = 6 AND player_role = 'Batsman';
UPDATE cricket SET player_role = 'All-rounder', matches_played = 200 WHERE player_id = 7 AND run_outs = 20;
UPDATE cricket SET team_name = 'Mumbai Indians', wickets_taken = 150 WHERE player_id = 8 AND country = 'India';

-- 3 Update Queries Using OR
UPDATE cricket SET age = 25 WHERE player_id = 9 OR player_id = 10;
UPDATE cricket SET player_role = 'Batsman' WHERE country = 'India' OR country = 'Australia';
UPDATE cricket SET matches_played = 150, catches = 20 WHERE player_id = 11 OR player_id = 12;

-- 5 DELETE Queries
DELETE FROM cricket WHERE player_id = 1;
DELETE FROM cricket WHERE country = 'Australia';
DELETE FROM cricket WHERE wickets_taken = 0;
DELETE FROM cricket WHERE matches_played = 60;
DELETE FROM cricket WHERE player_role = 'All-rounder';

-- 5 AND Queries
SELECT * FROM cricket WHERE country = 'India' AND player_role = 'Batsman';
SELECT * FROM cricket WHERE country = 'Australia' AND wickets_taken = 50;
SELECT * FROM cricket WHERE country = 'England' AND total_runs = 5000;
SELECT * FROM cricket WHERE country = 'New Zealand' AND matches_played = 108;
SELECT * FROM cricket WHERE country = 'Pakistan' AND catches = 15;

-- 5 OR Queries
SELECT * FROM cricket WHERE country = 'India' OR country = 'Australia';
SELECT * FROM cricket WHERE player_role = 'Batsman' OR player_role = 'All-rounder';
SELECT * FROM cricket WHERE wickets_taken = 50 OR catches = 15;
SELECT * FROM cricket WHERE matches_played = 200 OR total_runs = 5000;
SELECT * FROM cricket WHERE country = 'West Indies' OR country = 'South Africa';

-- 5 IN Queries
SELECT * FROM cricket WHERE country IN ('India', 'Australia', 'England');
SELECT * FROM cricket WHERE player_role IN ('Batsman', 'Bowler');
SELECT * FROM cricket WHERE team_name IN ('Mumbai Indians', 'Sunrisers Hyderabad');
SELECT * FROM cricket WHERE player_id IN (5, 10, 15, 20, 25);
SELECT * FROM cricket WHERE total_runs IN (5000, 10000, 15000);

-- 5 NOT IN Queries
SELECT * FROM cricket WHERE country NOT IN ('India', 'Australia', 'England');
SELECT * FROM cricket WHERE player_role NOT IN ('Batsman', 'Bowler');
SELECT * FROM cricket WHERE team_name NOT IN ('Mumbai Indians', 'Sunrisers Hyderabad');
SELECT * FROM cricket WHERE player_id NOT IN (5, 6, 7, 8, 9, 10);
SELECT * FROM cricket WHERE total_runs NOT IN (5000, 10000);

-- 5 BETWEEN Queries
SELECT * FROM cricket WHERE age BETWEEN 25 AND 30;
SELECT * FROM cricket WHERE matches_played BETWEEN 100 AND 150;
SELECT * FROM cricket WHERE total_runs BETWEEN 5000 AND 10000;
SELECT * FROM cricket WHERE wickets_taken BETWEEN 50 AND 100;
SELECT * FROM cricket WHERE catches BETWEEN 20 AND 30;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------