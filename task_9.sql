CREATE DATABASE movie;
USE movie;
CREATE TABLE theater_info(id int not null, t_name varchar(40) unique,
location varchar(30) unique, no_of_seats int, t_id varchar(20), primary key(t_id));

CREATE TABLE movies_info(id int not null, m_name varchar(30) unique, m_lang varchar(20),
theater_id varchar(30), foreign key(theater_id) references theater_info(t_id));

INSERT INTO theater_info (id, t_name, location, no_of_seats, t_id) VALUES
(1, 'Navarang', 'Rajajinagar', 150, 'N201RG'),
(2, 'PVR Cinemas', 'Koramangala', 200, 'P202KB'),
(3, 'INOX', 'Jayanagar', 180, 'I203JN'),
(4, 'Cinepolis', 'Malleshwaram', 300, 'C204MS'),
(5, 'IMAX', 'Indiranagar', 250, 'I205IN'),
(6, 'Sathyam Cinemas', 'Marathahalli', 120, 'S206MH'),
(7, 'Carnival Cinemas', 'Whitefield', 160, 'C207WF'),
(8, 'Gopalan Cinemas', 'Bannerghatta Road', 140, 'G208BR'),
(9, 'CineMAX', 'Electronic City', 100, 'C209EC'),
(10, 'Rockline Cinemas', 'Yelahanka', 80, 'R210YK');

INSERT INTO movies_info (id, m_name, m_lang, theater_id) VALUES
(1, 'KGF Chapter 2', 'Kannada', 'N201RG'),
(2, 'Pogaru', 'Kannada', 'P202KB'),
(3, 'Roberrt', 'Kannada', 'I203JN'),
(4, 'Kotigobba 3', 'Kannada', 'C204MS'),
(5, 'Yuvarathnaa', 'Kannada', 'I205IN'),
(6, 'Salaga', 'Kannada', 'S206MH'),
(7, 'Kurukshetra', 'Kannada', 'C207WF'),
(8, 'Robert', 'Kannada', 'G208BR'),
(9, 'Bhajarangi 2', 'Kannada', 'C209EC'),
(10, 'Kannad Gothilla', 'Kannada', 'R210YK');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------