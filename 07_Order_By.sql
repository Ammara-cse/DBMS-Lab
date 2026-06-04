
-- Aim: To perform Ordering the Display of Tuples

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

-- Display All Records

SELECT * FROM Student;

-- Order by Student Name (Ascending)

SELECT *
FROM Student
ORDER BY StudentName ASC;

-- Order by Student Name (Descending)

SELECT *
FROM Student
ORDER BY StudentName DESC;

-- Order by Marks (Ascending)

SELECT *
FROM Student
ORDER BY Marks ASC;

-- Order by Marks (Descending)

SELECT *
FROM Student
ORDER BY Marks DESC;

-- Order by Age

SELECT *
FROM Student
ORDER BY Age ASC;