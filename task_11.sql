CREATE DATABASE foreign_key;
USE foreign_key;

CREATE TABLE hospital(hos_id int primary key, hos_name varchar(100) not null unique, address varchar(100) unique,
city varchar(100) not null, state varchar(100) not null, country varchar(100) default 'india', contact_no bigint
not null unique, email varchar(100) unique);

INSERT INTO hospital(hos_id, hos_name, address, city, state, country, contact_no, email) VALUES
(1, 'apollo hospital', 'bannerghatta road', 'bangalore', 'karnataka', 'india', 9876543210, 'apollo.bangalore@example.com'),
(2, 'fortis hospital', 'cunningham road', 'bangalore', 'karnataka', 'india', 8765432109, 'fortis.bangalore@example.com'),
(3, 'manip hospital', 'old airport road', 'bangalore', 'karnataka', 'india', 7654321098, 'manipal.bangalore@example.com'),
(4, 'columbia asia hospital', 'whitefield', 'bangalore', 'karnataka', 'india', 6543210987, 'columbiaasia.bangalore@example.com'),
(5, 'narayana health', 'hosur road', 'bangalore', 'karnataka', 'india', 5432109876, 'narayana.bangalore@example.com'),
(6, 'sakra world hospital', 'outer ring road', 'bangalore', 'karnataka', 'india', 4321098765, 'sakra.bangalore@example.com'),
(7, 'bgs global hospitals', 'kengeri', 'bangalore', 'karnataka', 'india', 3210987654, 'bgs.bangalore@example.com'),
(8, 'sagar hospitals', 'banashankari', 'bangalore', 'karnataka', 'india', 2109876543, 'sagar.bangalore@example.com'),
(9, 'rajarajesw medical college and hospital', 'mysore road', 'bangalore', 'karnataka', 'india', 1098765432, 'rrmch.bangalore@example.com'),
(10, 'vydehi institute of medical sciences and research centre', 'whitefield main road', 'bangalore', 'karnataka', 'india', 987654321, 'vydehi.bangalore@example.com');
SELECT * FROM hospital;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE doctor(doc_id int primary key, doc_name varchar(100) not null unique, specialization varchar(100) not null,
qualification varchar(100) not null, exp int not null, contact_no bigint not null unique, email varchar(100) unique,
foreign key(doc_id) references hospital(hos_id));

INSERT INTO doctor (doc_id, doc_name, specialization, qualification, exp, contact_no, email) VALUES
(1, 'Dr. Rajesh Kumar', 'Cardiologist', 'MBBS, MD', 10, 9876543210, 'rajesh.kumar@example.com'),
(2, 'Dr. Anjali Singh', 'ermatologist', 'MBBS, MD', 8, 8765432109, 'anjali.singh@example.com'),
(3, 'Dr. Ravi Sharma', 'Neurologist', 'MBBS, DM', 12, 7654321098, 'ravi.sharma@example.com'),
(4, 'Dr. Priya Gupta', 'Gynecologist', 'MBBS, MS', 6, 6543210987, 'priya.gupta@example.com'),
(5, 'Dr. Sanjay Singh', 'Orthopedic Surgeon', 'MBBS, MS', 15, 5432109876, 'sanjay.singh@example.com'),
(6, 'Dr. Nisha Patel', 'Pediatrician', 'MBBS, MD', 9, 4321098765, 'isha.patel@example.com'),
(7, 'Dr. Arjun Reddy', 'Oncologist', 'MBBS, DM', 11, 3210987654, 'arjun.reddy@example.com'),
(8, 'Dr. Shalini Rao', 'Psychiatrist', 'MBBS, MD', 7, 2109876543, 'shalini.rao@example.com'),
(9, 'Dr. Vikram Singh', 'Urologist', 'MBBS, MS', 13, 1098765432, 'vikram.singh@example.com'),
(10, 'Dr. Meera Menon', 'ENT Specialist', 'MBBS, MS', 5, 987654321, 'meera.menon@example.com');
SELECT * FROM doctor;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE patient(pat_id int, pat_name varchar(100) not null unique, gender varchar(100) not null,
age int not null, address varchar(100) unique, contact_no bigint not null unique, email varchar(100) unique,
foreign key(pat_id) references doctor(doc_id));

INSERT INTO patient (pat_id, pat_name, gender, age, address, contact_no, email) VALUES
(1, 'sneha gupta', 'female', 27, 'indiranagar, bangalore', 9898989898, 'sneha.gupta@example.com'),
(1, 'rahul sharma', 'male', 32, 'koramangala, bangalore', 6767676767, 'rahul.sharma@example.com'),
(1, 'priya singh', 'female', 45, 'jayanagar, bangalore', 6543267853, 'priya.singh@example.com'),
(2, 'amit patel', 'male', 38, 'whitefield, bangalore', 9567890123, 'amit.patel@example.com'),
(4, 'deepa reddy', 'female', 29, 'electronic city, bangalore', 7678901234, 'deepa.reddy@example.com'),
(3, 'sanjay kumar', 'male', 52, 'malleshwaram, bangalore', 6789012345, 'sanjay.kumar@example.com'),
(7, 'manju rao', 'female', 34, 'btm layout, bangalore', 7890123456, 'manju.rao@example.com'),
(5, 'nikhil menon', 'male', 41, 'hsr layout, bangalore', 8901234567, 'nikhil.menon@example.com'),
(6, 'kavita sharma', 'female', 36, 'marathahalli, bangalore', 9012345678, 'kavita.sharma@example.com'),
(9, 'anand verma', 'male', 43, 'jp nagar, bangalore', 8123456789, 'anand.verma@example.com');
SELECT * FROM patient;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Inner Join
SELECT h.hos_name, h.address, d.doc_name, d.specialization, d.contact_no FROM hospital as h INNER JOIN doctor d on h.hos_id = d.doc_id;
SELECT h.hos_name, h.address, d.doc_name, d.specialization, d.contact_no, p.pat_name, p.gender FROM hospital as h INNER JOIN
doctor d on h.hos_id = d.doc_id INNER JOIN patient p on d.doc_id = p.pat_id;
# LEFT Join
SELECT d.doc_id, d.doc_name, d.specialization, d.contact_no, p.pat_name, p.gender, p.age FROM doctor as d LEFT JOIN patient p on d.doc_id = p.pat_id;
# Right Join
SELECT h.hos_id, h.hos_name, h.address, p.pat_name, p.gender, p.age FROM hospital as h RIGHT JOIN patient as p on h.hos_id = p.pat_id;
# Cross Join
SELECT * FROM hospital, patient, doctor;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
