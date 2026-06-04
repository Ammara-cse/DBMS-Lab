-- Aim: To study WHERE Clause Predicates

USE CollegeDB;

-- Create Student Table

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT,
    Marks INT
);

-- Insert Records

INSERT INTO Student VALUES
(1,'Ammara',20,85),
(2,'Ali',21,75),
(3,'Sara',19,90),
(4,'Ahmed',22,65),
(5,'Arman',20,80);

-- Equal To

SELECT *
FROM Student
WHERE Age = 20;

-- Greater Than

SELECT *
FROM Student
WHERE Marks > 80;

-- Less Than

SELECT *
FROM Student
WHERE Marks < 80;

-- Greater Than or Equal To

SELECT *
FROM Student
WHERE Marks >= 80;

-- Not Equal To

SELECT *
FROM Student
WHERE Age <> 20;

-- BETWEEN Predicate

SELECT *
FROM Student
WHERE Marks BETWEEN 70 AND 90;

-- IN Predicate

SELECT *
FROM Student
WHERE Age IN (20,21);

-- NOT IN Predicate

SELECT *
FROM Student
WHERE Age NOT IN (20,21);

-- LIKE Predicate

SELECT *
FROM Student
WHERE StudentName LIKE 'A%';