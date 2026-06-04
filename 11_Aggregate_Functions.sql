-- Aim: To study Aggregate Functions

USE CollegeDB;

-- Create Student Table

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Marks INT
);

-- Insert Records

INSERT INTO Student VALUES
(1,'Ammara',85),
(2,'Ali',75),
(3,'Sara',90),
(4,'Ahmed',65),
(5,'Arman',80);

-- COUNT Function

SELECT COUNT(*) AS Total_Students
FROM Student;

-- SUM Function

SELECT SUM(Marks) AS Total_Marks
FROM Student;

-- AVG Function

SELECT AVG(Marks) AS Average_Marks
FROM Student;

-- MAX Function

SELECT MAX(Marks) AS Highest_Marks
FROM Student;

-- MIN Function

SELECT MIN(Marks) AS Lowest_Marks
FROM Student;

-- All Aggregate Functions Together

SELECT
COUNT(*) AS Total_Students,
SUM(Marks) AS Total_Marks,
AVG(Marks) AS Average_Marks,
MAX(Marks) AS Highest_Marks,
MIN(Marks) AS Lowest_Marks
FROM Student;