/**
* Milestone3DDL.sql
*
* This file contains the DDL for the Milestone3 schema
*
* Modifications:
*
* 03/20/2024 – rorque - Created
* 04/09/2024 – rorque - Added longitude and latitude
* 04/26/2024 – rorque - Added INSERT INTO CSC648DB.Athletes (AWS RDS mysql)
*
* @author rorque
*/

/**
* University
*
* University to store each university data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
* 04/09/2024 – rorque - Added longitude and latitude
*
* @author rorque
*/     
CREATE TABLE University (
    university_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    location VARCHAR(45),
    sport VARCHAR(45),
    medals VARCHAR(45),
    notable_athletes VARCHAR(45),
    academia_rating VARCHAR(45),
    longitude FLOAT,
    latitude FLOAT
);

/**
* Athletes
*
* Athletes to store each athlete data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/  
CREATE TABLE Athletes (
    athlete_id INT AUTO_INCREMENT PRIMARY KEY,
    athlete_user_id INT,
    athlete_university VARCHAR(45),
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    sport_played VARCHAR(45),
    medal VARCHAR(45),
    country VARCHAR(45),
    FOREIGN KEY (athlete_user_id) REFERENCES Users(user_id)
);

/**
* Reviews
*
* Reviews to store each review from the users
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/  
CREATE TABLE Reviews (
    reviews_id INT AUTO_INCREMENT PRIMARY KEY,
    reviews_university_id INT,
    reviews_user_id INT,
    review VARCHAR(255),
    rating INT,
    FOREIGN KEY (reviews_university_id) REFERENCES University(university_id),
    FOREIGN KEY (reviews_user_id) REFERENCES Users(user_id)
);

/**
* Students
*
* Students to store each students data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/  
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_university_id INT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    athletic_stats VARCHAR(45),
    academic_stats VARCHAR(45),
    student_user_id INT,
    FOREIGN KEY (student_university_id) REFERENCES University(university_id),
    FOREIGN KEY (student_user_id) REFERENCES Users(user_id)
);

/**
* UniversityStaff
*
* UniversityStaff to store each university staff data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/  
CREATE TABLE UniversityStaff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    university_staff_id INT,
    FOREIGN KEY (university_staff_id) REFERENCES University(university_id)
);

/**
* Users
*
* Users to store each user data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/  
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_type VARCHAR(45),
    user_email VARCHAR(45),
    password VARCHAR(45),
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    username VARCHAR(45),
    created TIMESTAMP
);

/**
* OlympicGames
*
* OlympicGames to store each olympic game data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/ 
CREATE TABLE OlympicGames (
    game_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT,
    season VARCHAR(45),
    host_city VARCHAR(45)
);

/**
* Participation
*
* Participation to store each athlete participation data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/ 
CREATE TABLE Participation (
    participation_id INT AUTO_INCREMENT PRIMARY KEY,
    game_id INT,
    athlete_id INT,
    sport VARCHAR(45),
    event VARCHAR(45),
    result VARCHAR(45),
    FOREIGN KEY (game_id) REFERENCES OlympicGames(game_id),
    FOREIGN KEY (athlete_id) REFERENCES Athletes(athlete_id)
);

/**
* SportsFacilities
*
* SportsFacilities to store each sporting facilities for university data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/ 
CREATE TABLE SportsFacilities (
    facility_id INT AUTO_INCREMENT PRIMARY KEY,
    university_id INT,
    facility_type VARCHAR(45),
    capacity INT,
    FOREIGN KEY (university_id) REFERENCES University(university_id)
);

/**
* CoachingStaff
*
* CoachingStaff to store each coaching staff data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/ 
CREATE TABLE CoachingStaff (
    coach_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    specialization VARCHAR(45),
    university_id INT,
    FOREIGN KEY (university_id) REFERENCES University(university_id)
);

/**
* Scholarships
*
* Scholarships to store each scholarships for the athlete data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/ 
CREATE TABLE Scholarships (
    scholarship_id INT AUTO_INCREMENT PRIMARY KEY,
    university_id INT,
    athlete_id INT,
    scholarship_type VARCHAR(45),
    amount DECIMAL(10, 2),
    FOREIGN KEY (university_id) REFERENCES University(university_id),
    FOREIGN KEY (athlete_id) REFERENCES Athletes(athlete_id)
);

/**
* AthletePerformance
*
* AthletePerformance to store each performance data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/ 
CREATE TABLE AthletePerformance (
    performance_id INT AUTO_INCREMENT PRIMARY KEY,
    athlete_id INT,
    event_id INT,
    score VARCHAR(45),
    performance_date DATE,
    FOREIGN KEY (athlete_id) REFERENCES Athletes(athlete_id),
    FOREIGN KEY (event_id) REFERENCES Participation(participation_id)
);

/**
* Sponsorship
*
* Sponsorship to store each sponsorship for athlete data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
* 04/09/2024 – rorque - Added longitude and latitude
*
* @author rorque
*/ 
CREATE TABLE Sponsorship (
    sponsorship_id INT AUTO_INCREMENT PRIMARY KEY,
    sponsor_name VARCHAR(45),
    sponsor_type VARCHAR(45)
);

/**
* TrainingSchedules
*
* TrainingSchedules to store each Training Schedule data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/ 
CREATE TABLE TrainingSchedules (
    schedule_id INT AUTO_INCREMENT PRIMARY KEY,
    university_id INT,
    sport VARCHAR(45),
    start_time TIME,
    end_time TIME,
    days VARCHAR(45),
    FOREIGN KEY (university_id) REFERENCES University(university_id)
);

/**
* Team
*
* Team to store each Team data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
*
* @author rorque
*/ 
CREATE TABLE Team (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(45),
    university_id INT,
    sport VARCHAR(45),
    coach_id INT,
    FOREIGN KEY (university_id) REFERENCES University(university_id),
    FOREIGN KEY (coach_id) REFERENCES Coach(coach_id)
);

/**
* Athlete_Team
*
* Athlete_Team to store each Athlete Team data
*
* Modifications:
*
* 03/20/2024 – rorque - Initial creation of table
* 04/09/2024 – rorque - Added longitude and latitude
*
* @author rorque
*/ 
CREATE TABLE Athlete_Team (
    athlete_team_id INT AUTO_INCREMENT PRIMARY KEY,
    athlete_id INT,
    team_id INT,
    position VARCHAR(45),
    FOREIGN KEY (athlete_id) REFERENCES Athletes(athlete_id),
    FOREIGN KEY (team_id) REFERENCES Team(team_id)
);




