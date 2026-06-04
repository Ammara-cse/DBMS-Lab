-- Aim: To study Different Types of Joins

USE CollegeDB;

DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Department;

-- Create Department Table

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Create Student Table

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT
);

-- Insert Department Records

INSERT INTO Department VALUES
(101,'Computer'),
(102,'IT'),
(103,'Mechanical'),
(104,'Civil');

-- Insert Student Records

INSERT INTO Student VALUES
(1,'Ammara',101),
(2,'Ali',102),
(3,'Sara',101),
(4,'Ahmed',103);

--------------------------------------------------
-- INNER JOIN
--------------------------------------------------

SELECT S.StudentID,
       S.StudentName,
       D.DepartmentName
FROM Student S
INNER JOIN Department D
ON S.DepartmentID = D.DepartmentID;

--------------------------------------------------
-- LEFT JOIN
--------------------------------------------------

SELECT S.StudentID,
       S.StudentName,
       D.DepartmentName
FROM Student S
LEFT JOIN Department D
ON S.DepartmentID = D.DepartmentID;

--------------------------------------------------
-- RIGHT JOIN
--------------------------------------------------

SELECT S.StudentID,
       S.StudentName,
       D.DepartmentName
FROM Student S
RIGHT JOIN Department D
ON S.DepartmentID = D.DepartmentID;

--------------------------------------------------
-- CROSS JOIN
--------------------------------------------------

SELECT S.StudentName,
       D.DepartmentName
FROM Student S
CROSS JOIN Department D;

--------------------------------------------------
-- SELF JOIN
--------------------------------------------------

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    ManagerID INT
);

INSERT INTO Employee VALUES
(1,'Rahul',NULL),
(2,'Amit',1),
(3,'Priya',1),
(4,'Sneha',2);

SELECT
E.EmpName AS Employee,
M.EmpName AS Manager
FROM Employee E
LEFT JOIN Employee M
ON E.ManagerID = M.EmpID;

--------------------------------------------------
-- FULL OUTER JOIN (MySQL Alternative)
--------------------------------------------------

SELECT S.StudentID,
       S.StudentName,
       D.DepartmentName
FROM Student S
LEFT JOIN Department D
ON S.DepartmentID = D.DepartmentID

UNION

SELECT S.StudentID,
       S.StudentName,
       D.DepartmentName
FROM Student S
RIGHT JOIN Department D
ON S.DepartmentID = D.DepartmentID;