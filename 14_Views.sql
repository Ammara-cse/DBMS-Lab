-- DBMS LAB 14
-- Aim: To study Views

USE CollegeDB;

-- Remove old table if exists

DROP TABLE IF EXISTS Student;

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

-- Create View

CREATE VIEW Student_View AS
SELECT StudentID, StudentName, Marks
FROM Student;

-- Display View

SELECT * FROM Student_View;

-- Create Top Students View

CREATE VIEW Top_Students AS
SELECT StudentID, StudentName, Marks
FROM Student
WHERE Marks > 80;

-- Display Top Students

SELECT * FROM Top_Students;

-- Show All Views

SHOW FULL TABLES
WHERE Table_type = 'VIEW';

-- Drop View

DROP VIEW Student_View;