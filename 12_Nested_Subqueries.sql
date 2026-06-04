-- Aim: To study Nested Subqueries

USE CollegeDB;

DROP TABLE IF EXISTS Student;

-- Create Table

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

-- Display Records

SELECT * FROM Student;

--------------------------------------------------
-- Maximum Marks
--------------------------------------------------

SELECT StudentName, Marks
FROM Student
WHERE Marks =
(
    SELECT MAX(Marks)
    FROM Student
);

--------------------------------------------------
-- Minimum Marks
--------------------------------------------------

SELECT StudentName, Marks
FROM Student
WHERE Marks =
(
    SELECT MIN(Marks)
    FROM Student
);

--------------------------------------------------
-- Above Average Marks
--------------------------------------------------

SELECT StudentName, Marks
FROM Student
WHERE Marks >
(
    SELECT AVG(Marks)
    FROM Student
);

--------------------------------------------------
-- Below Average Marks
--------------------------------------------------

SELECT StudentName, Marks
FROM Student
WHERE Marks <
(
    SELECT AVG(Marks)
    FROM Student
);

--------------------------------------------------
-- Second Highest Marks
--------------------------------------------------

SELECT StudentName, Marks
FROM Student
WHERE Marks =
(
    SELECT MAX(Marks)
    FROM Student
    WHERE Marks <
    (
        SELECT MAX(Marks)
        FROM Student
    )
);

--------------------------------------------------
-- Students Scoring More Than Ali
--------------------------------------------------

SELECT StudentName, Marks
FROM Student
WHERE Marks >
(
    SELECT Marks
    FROM Student
    WHERE StudentName = 'Ali'
);

--------------------------------------------------
-- Students Scoring Less Than Sara
--------------------------------------------------

SELECT StudentName, Marks
FROM Student
WHERE Marks <
(
    SELECT Marks
    FROM Student
    WHERE StudentName = 'Sara'
);

--------------------------------------------------
-- Students Having Marks Equal To Highest Marks
--------------------------------------------------

SELECT *
FROM Student
WHERE Marks IN
(
    SELECT MAX(Marks)
    FROM Student
);

--------------------------------------------------
-- Students Having Marks Greater Than Average
--------------------------------------------------

SELECT *
FROM Student
WHERE Marks >
(
    SELECT AVG(Marks)
    FROM Student
);