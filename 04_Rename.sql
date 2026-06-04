
-- Aim: To perform Rename Operation

USE CollegeDB;

-- Create Student Table

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Age INT
);

-- Display Tables

SHOW TABLES;

-- Rename Table

RENAME TABLE Student TO Student_Info;

-- Display Tables After Rename

SHOW TABLES;