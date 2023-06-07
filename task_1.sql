CREATE DATABASE task1;
USE task1;

-- Created 2 tables
CREATE TABLE state_info(id INT, state_name VARCHAR(30), capital VARCHAR(30), 
no_of_dist INT, st_language VARCHAR(20));
CREATE TABLE sports_info(id INT, sport_type VARCHAR(20), no_of_players INT, 
sport_name VARCHAR(40));

-- Added 4 new column
ALTER TABLE state_info 
ADD COLUMN population BIGINT,
ADD COLUMN st_governor_name VARCHAR(50),
ADD COLUMN st_chief_minister_name VARCHAR(50),
ADD COLUMN st_code VARCHAR(2);

-- Removed 1 column
ALTER TABLE state_info DROP COLUMN st_language;

-- Renamed 2 column
ALTER TABLE state_info 
RENAME COLUMN capital TO st_capital,
RENAME COLUMN population To st_population;

-- Modified 1 column
ALTER TABLE state_info MODIFY COLUMN no_of_dist VARCHAR(30);

-- Describe the structure of the "state_info" table
DESC state_info;

