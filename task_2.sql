CREATE DATABASE task2;
USE task2;

-- Created table 1
CREATE TABLE flipkart(id INT, name VARCHAR(100), category VARCHAR(50), price INT, quantity INT,
brand VARCHAR(50), description VARCHAR(255), seller_id INT, seller_name VARCHAR(100), rating INT,
created_date VARCHAR(15), last_updated_date VARCHAR(20));

-- Added 3 columns
ALTER TABLE flipkart 
ADD COLUMN color VARCHAR(10),
ADD COLUMN weight INT,
ADD COLUMN warranty INT;

-- Removed 1 column
ALTER TABLE flipkart DROP COLUMN last_updated_date;

-- Renamed 5 columns
ALTER TABLE flipkart 
RENAME COLUMN id TO product_id,
RENAME COLUMN name TO product_name,
RENAME COLUMN warranty TO warranty_in_years,
RENAME COLUMN brand TO brand_name,
RENAME COLUMN description TO product_description;

-- Modified 4 columns
ALTER TABLE flipkart
MODIFY COLUMN price BIGINT,
MODIFY COLUMN created_date VARCHAR(20),
MODIFY COLUMN product_name VARCHAR(150),
MODIFY COLUMN category VARCHAR(100);

-- Describe the Structure of the table
DESC flipkart;

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Created table 2
CREATE TABLE bank(number INT, holder_name VARCHAR(50), balance BIGINT, branch_name VARCHAR(100),
branch_code VARCHAR(20), IFSC VARCHAR(20), PAN_number VARCHAR(20), Aadhaar_number VARCHAR(20),
contact_number VARCHAR(20), email VARCHAR(100));

-- Added 3 columns
ALTER TABLE bank 
ADD COLUMN address VARCHAR(255),
ADD COLUMN opening_date VARCHAR(20),
ADD COLUMN last_transaction_date VARCHAR(20);

-- Removed 1 column
ALTER TABLE bank DROP COLUMN branch_code;

-- Renamed 5 columns
ALTER TABLE bank 
RENAME COLUMN number TO account_number,
RENAME COLUMN holder_name TO account_holder_name,
RENAME COLUMN balance TO account_balance,
RENAME COLUMN email TO email_id,
RENAME COLUMN IFSC TO IFSC_code;

-- Modified 4 columns
ALTER TABLE bank
MODIFY COLUMN account_number BIGINT,
MODIFY COLUMN opening_date VARCHAR(50),
MODIFY COLUMN branch_name VARCHAR(150),
MODIFY COLUMN account_holder_name VARCHAR(150);

-- Describe the Structure of the table
DESC bank;

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Created table 3
CREATE TABLE cricket(id INT, name VARCHAR(100), country VARCHAR(50), age INT, role VARCHAR(50), matches_played INT,
runs_scored INT, wickets_taken INT, team VARCHAR(50));

-- Added 3 columns
ALTER TABLE cricket
ADD COLUMN catches INT,
ADD COLUMN centuries INT,
ADD COLUMN run_outs INT;

-- Removed 1 column
ALTER TABLE cricket DROP COLUMN centuries;

-- Renamed 5 columns
ALTER TABLE cricket
RENAME COLUMN id TO player_id,
RENAME COLUMN name TO player_name,
RENAME COLUMN role TO player_role,
RENAME COLUMN team TO team_name,
RENAME COLUMN runs_scored TO total_runs;

-- Modified 4 columns
ALTER TABLE cricket
MODIFY COLUMN player_name VARCHAR(200),
MODIFY COLUMN player_role VARCHAR(100),
MODIFY COLUMN total_runs BIGINT,
MODIFY COLUMN matches_played BIGINT;

-- Describe the Structure of the table
DESC cricket;
