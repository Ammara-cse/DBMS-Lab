-- Aim: To perform Set Operations

USE CollegeDB;

-- Create Tables

CREATE TABLE Student_A (
    StudentID INT,
    StudentName VARCHAR(50)
);

CREATE TABLE Student_B (
    StudentID INT,
    StudentName VARCHAR(50)
);

-- Insert Records

INSERT INTO Student_A VALUES
(1,'Ammara'),
(2,'Ali'),
(3,'Sara');

INSERT INTO Student_B VALUES
(3,'Sara'),
(4,'Ahmed'),
(5,'Arman');

-- UNION

SELECT * FROM Student_A
UNION
SELECT * FROM Student_B;

-- UNION ALL

SELECT * FROM Student_A
UNION ALL
SELECT * FROM Student_B;

-- INTERSECT using INNER JOIN

SELECT A.*
FROM Student_A A
INNER JOIN Student_B B
ON A.StudentID = B.StudentID;

-- EXCEPT using NOT IN

SELECT *
FROM Student_A
WHERE StudentID NOT IN
(
    SELECT StudentID
    FROM Student_B
);