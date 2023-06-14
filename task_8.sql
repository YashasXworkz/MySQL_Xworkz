use task2;
CREATE TABLE karnataka_mla (id INT NOT NULL UNIQUE, name VARCHAR(100) NOT NULL, constituency VARCHAR(100) NOT NULL UNIQUE,
party VARCHAR(50) NOT NULL, age INT NOT NULL, email VARCHAR(100) UNIQUE, phone BIGINT NOT NULL UNIQUE,
education VARCHAR(100) NOT NULL, assets BIGINT NOT NULL UNIQUE, criminal_cases INT NOT NULL);

INSERT INTO karnataka_mla (id, name, constituency, party, age, email, phone, education, assets, criminal_cases)
VALUES
(1, 'siddaramaiah', 'varuna', 'indian national congress', 70, 'siddaramaiah@example.com', 1234567890, 'bachelor of arts', 500, 0),
(2, 'bs yediyurappa', 'shikaripura', 'bharatiya janata party', 78, 'bsy@example.com', 2345678901, 'bachelor of science', 2000, 1),
(3, 'hd kumaraswamy', 'channapatna', 'janata dal (secular)', 62, 'hdk@example.com', 3456789012, 'bachelor of commerce', 1000, 0),
(4, 'dk shivakumar', 'kanakapura', 'indian national congress', 59, 'dkshivakumar@example.com', 4567890123, 'bachelor of laws', 20000, 2),
(5, 'b sriramulu', 'molakalmuru', 'bharatiya janata party', 50, 'bsriramulu@example.com', 5678901234, 'bachelor of arts', 15000, 1),
(6, 'r ashoka', 'padmanabhanagar', 'bharatiya janata party', 55, 'rashoka@example.com', 6789012345, 'bachelor of engineering', 30000, 0),
(7, 'mb patil', 'babaleshwar', 'indian national congress', 55, 'mbpatil@example.com', 7890123456, 'bachelor of science', 18000, 0),
(8, 'basavaraj bommai', 'shiggaon', 'bharatiya janata party', 61, 'bbommai@example.com', 8901234567, 'bachelor of technology', 4000, 0),
(9, 'rv deshpande', 'haliyal', 'indian national congress', 74, 'rvdeshpande@example.com', 9012345678, 'master of arts', 8000, 0),
(10, 'priyank kharge', 'chittapur', 'indian national congress', 40, 'priyankkharge@example.com', 9123456789, 'master of business administration', 5001, 0),
(11, 'jagadish shettar', 'hubli-dharwad central', 'bharatiya janata party', 59, 'jshettar@example.com', 9234567890, 'bachelor of engineering', 15010, 1),
(12, 'r shankar', 'ranebennuru', 'karnataka pragnyavantha janatha party', 48, 'rshankar@example.com', 9345678901, 'bachelor of commerce', 100000, 0),
(13, 'hd deve gowda', 'hassan', 'janata dal (secular)', 89, 'hdg@example.com', 9456789012, 'bachelor of arts', 3001, 0),
(14, 'anant kumar hegde', 'uttara kannada', 'bharatiya janata party', 52, 'anantkumarhegde@example.com', 9567890123, 'bachelor of engineering', 25000, 1),
(15, 'dk suresh', 'bangalore rural', 'indian national congress', 47, 'dksuresh@example.com', 9678901234, 'bachelor of science', 20001, 0),
(16, 'ks eshwarappa', 'shivamogga', 'bharatiya janata party', 72, 'kse@example.com', 9789012345, 'bachelor of arts', 40000, 0),
(17, 'pc siddanagouda', 'kanakagiri', 'indian national congress', 59, 'pcsiddanagouda@example.com', 9890123456, 'bachelor of education', 10000, 2),
(18, 'sr vishwanath', 'yelahanka', 'bharatiya janata party', 63, 'srvishwanath@example.com', 9901234567, 'master of science', 35000, 0),
(19, 'kr ramesh kumar', 'srinivaspur', 'indian national congress', 68, 'krrameshkumar@example.com', 9912345678, 'doctor of medicine', 50000, 0),
(20, 'ct ravi', 'chikkamagaluru', 'bharatiya janata party', 52, 'ctravi@example.com', 9923456789, 'master of commerce', 3000, 1);
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------