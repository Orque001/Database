/**
* Milestone3DML.sql
*
* This file contains the DML for the Milestone3 schema
*
* Modifications:
*
* 03/20/2024 – rorque - Created
* 04/26/2024 – rorque - Added INSERT INTO CSC648DB.Athletes (AWS RDS mysql)
* 04/30/2024 - rorque - Added UPDATE WHERE university_id 
* 04/30/2024 – rorque - Added INSERT INTO CSC648DB.Students
*
* @author rorque
*/

/**
* Athletes
*
* Insert athletes into Athletes table
*
* Modifications:
*
* 03/20/2024 – rorque – Initial creation of INSERT
* 04/10/2024 – rorque - Added INSERT INTO CSC648DB.University
* 04/26/2024 – rorque - Added INSERT INTO CSC648DB.Athletes (AWS RDS mysql)
* 04/30/2024 – rorque - Added UPDATE WHERE university_id
* 04/30/2024 – rorque - Updated Universities to add longitude and latitude
*
* @author rorque
*/
INSERT INTO CSC648DB.Athletes (athlete_user_id, athlete_university, first_name, last_name, sport_played, medal, country)
VALUES ('1', 'CSU Bakersfield', 'Roderick', 'Green', 'Shot Put', 'Bronze', 'USA'),
		('2', 'Chico State', 'Michael ', 'Bruner', 'Swimming', 'Gold', 'USA'),
        ('3', 'CSU Dominguez Hills', 'Carmelita', 'Jeter', '4x100 Meters Relay', 'Gold', 'USA'),
		('4', 'CSU Dominguez Hills', 'Joe', 'Ryan', 'Baseball', 'Silver', 'USA'),
		('5', 'CSU East Bay', 'Ed', 'Burke', 'Hammer Throw', 'Bronze', 'USA'),
		('6', 'Fresno State', 'Laura', 'Berg', 'Softball ', 'Gold', 'USA'),
		('7', 'CSU Fullerton', 'Ed', 'Caruthers', 'High Jump', 'Silver', 'USA'),
        ('8', 'CSU Fullerton', 'Leo', 'Manzano', '1500 Meters', 'Silver', 'USA'),
		('9', 'CSU Long Beach', 'Susie', 'Atwood', 'Swimming', 'Silver', 'USA'),
		('10', 'CSU Long Beach', 'Pat', 'McCormick', 'Diving', 'Gold', 'USA'),
		('11', 'CSU Long Beach', 'Joan', 'an Blom', 'Rowing', 'Silver', 'USA'),
		('12', 'CSU Long Beach', 'Ed', 'Ratleff', 'Basketball', 'Silver', 'USA'),
		('13', 'CSU Long Beach', 'Dwight', 'Stones', 'High Jump', 'Bronze', 'USA'),
		('14', 'CSU Long Beach', 'Steve', 'Lewis', '400 Meters', 'Gold', 'USA');

/**
* INSERT
*
* Insert Students into students table
*
* Modifications:
*
* 04/30/2024 – rorque - Added INSERT INTO CSC648DB.Students (AWS RDS mysql)
*
* @author rorque
*/  
INSERT INTO Students (student_university_id, student_user_id, first_name, last_name, academic_stats) 
VALUES (1, 11111, 'Lei', 'Woods', 'GPA 3.8'),
	(2, 11112, 'Eric', 'Kunzel', 'GPA 3.5'),
    (3, 11113, 'Alex', 'Chan', 'GPA 3.0'),
    (4, 11114, 'Elliot', 'Bullard','GPA 4.0'),
    (5, 11115, 'Mila', 'Avagimova','GPA 2.6'),
    (6, 11116, 'Oscar', 'Galvez','GPA 3.4'),
    (7, 11117, 'Riel', 'Orque','GPA 3.2');


/**
* INSERT
*
* Insert university into University table
*
* Modifications:
*
* 04/10/2024 – rorque - Added INSERT INTO CSC648DB.University (AWS RDS mysql)
*
* @author rorque
*/
INSERT INTO CSC648DB.University (university_id, name, location, medals, notable_athletes, academia_rating)
VALUES ('1', 'CSU Bakersfield', 'Bakersfield, CA', '1', '1', '34'),
		('2', 'CSU Channel Islands', 'Camarillo, CA', '0', '0', '28'),
        ('3', 'Chico State', 'Chico, CA', '1', '1', '16'),
        ('4', 'CSU Dominguez Hills', 'Carson, CA', '2', '2', '38'),
        ('5', 'CSU East Bay', 'Hayward, CA', '1', '1', '280'),
        ('6', 'Fresno State', 'Fresno, CA', '1', '1', '185'),
        ('7', 'CSU Fullerton', 'Fullerton, CA', '2', '2', '133'),
        ('8', 'Cal Poly Humboldt', 'Arcata, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('9', 'CSU Long Beach', 'Long Beach, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('10', 'CSU Los Angeles', 'Los Angeles, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('11', 'CSU Maritime Academy', 'Vallejo, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('12', 'CSU Monterey Bay', 'Seaside, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('13', 'CSU Northridge', 'Northridge, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('14', 'Cal Poly Pomona', 'Pomona, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('15', 'Sacramento State', 'Sacramento, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('16', 'CSU San Bernardino', 'San Bernardino, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('17', 'San Diego State University', 'San Diego, CA ', 'medals', 'notable_athletes', 'academia_rating'),
        ('18', 'San Francisco State', 'San Francisco, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('19', 'San José State', 'San José, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('19', 'Cal Poly San Luis Obispo', 'San Luis Obispo, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('20', 'CSU San Marcos', 'San Marcos, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('21', 'CSU Sonoma', 'Rohnert Park, CA', 'medals', 'notable_athletes', 'academia_rating'),
        ('22', 'CSU Stanislaus', 'Turlock, CA', 'medals', 'notable_athletes', 'academia_rating');
        
/**
* UPDATE
*
* UPDATE longitude, latitude into University table
*
* Modifications:
*
* 04/30/2024 – rorque - Added UPDATE WHERE university_id is...
*
* @author rorque
*/        
UPDATE CSC648DB.University
SET longitude = -119.018715, latitude = 35.373291
WHERE university_id = 1;

UPDATE CSC648DB.University
SET longitude = -119.223541, latitude = 34.157532
WHERE university_id = 2;

UPDATE CSC648DB.University
SET longitude = -100.131172, latitude = 19.333401
WHERE university_id = 3;

UPDATE CSC648DB.University
SET longitude = -118.23026, latitude = 33.85817
WHERE university_id = 4;

UPDATE CSC648DB.University
SET longitude = -85.506248, latitude = 44.70055
WHERE university_id = 5;

UPDATE CSC648DB.University
SET longitude = -109.650917, latitude = 31.362049
WHERE university_id = 6;

UPDATE CSC648DB.University
SET longitude = -117.924301, latitude = 33.87035
WHERE university_id = 7;

UPDATE CSC648DB.University
SET longitude = -124.008667, latitude = 41.37294
WHERE university_id = 8;

UPDATE CSC648DB.University
SET longitude = -118.181313, latitude = 33.771709
WHERE university_id = 9;

UPDATE CSC648DB.University
SET longitude = -118.527321, latitude = 34.240929
WHERE university_id = 10;

UPDATE CSC648DB.University
SET longitude = -122.229736, latitude = 38.071659
WHERE university_id = 11;

UPDATE CSC648DB.University
SET longitude = -104.722733, latitude = 40.38147
WHERE university_id = 12;

UPDATE CSC648DB.University
SET longitude = -118.525917, latitude = 34.240929
WHERE university_id = 13;

UPDATE CSC648DB.University
SET longitude = -117.821342, latitude = 34.057919
WHERE university_id = 14;

UPDATE CSC648DB.University
SET longitude = -121.478851, latitude = 38.57693
WHERE university_id = 15;

UPDATE CSC648DB.University
SET longitude = -117.294098, latitude = 34.108318
WHERE university_id = 16;

UPDATE CSC648DB.University
SET longitude = -117.071892, latitude = 32.775723
WHERE university_id = 17;

UPDATE CSC648DB.University
SET longitude = -122.4799, latitude = 37.7241
WHERE university_id = 18;

UPDATE CSC648DB.University
SET longitude = -121.8811, latitude = 37.3352
WHERE university_id = 19;

UPDATE CSC648DB.University
SET longitude = -120.6625, latitude = 35.305
WHERE university_id = 20;

UPDATE CSC648DB.University
SET longitude = -117.1587, latitude = 33.1298
WHERE university_id = 21;

UPDATE CSC648DB.University
SET longitude = -122.458, latitude = 38.2919
WHERE university_id = 22;

UPDATE CSC648DB.University
SET longitude = -120.8555, latitude = 37.5254
WHERE university_id = 23;
        
/**
* DROP
*
* DROP tables IF EXISTS certain tables
*
* Modifications:
*
* 04/10/2024 – rorque - DROP tables if tables exists
*
* @author rorque
*/
DROP TABLE IF EXISTS `athlete`;            
DROP TABLE IF EXISTS `university`;       
DROP TABLE IF EXISTS `users`; 

/**
* Search
*
* Search query function to search University
*
* Modifications:
*
* 04/10/2024 – rorque - search queries
*
* @author rorque
*/
let queryStringSearch1 = "SELECT * FROM University \
                            WHERE name LIKE ? \
                            OR location LIKE ? \
                            OR sport LIKE ? \
                            OR medals LIKE ? \
                            OR notable_athletes LIKE ? \
                            OR academia_rating LIKE ?";
let queryStringSearch2 = "SELECT * FROM University \
                            WHERE sport LIKE ? \
                            AND (location LIKE ? \
                            OR name LIKE ?\
                            OR medals LIKE ? \
                            OR notable_athletes LIKE ? \
                            OR academia_rating LIKE ?)";
        