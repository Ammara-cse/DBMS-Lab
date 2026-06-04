-- DBMS LAB 5
-- Aim: To study Self Join

USE CollegeDB;

DROP TABLE IF EXISTS Employee;

-- Create Employee Table

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    ManagerID INT
);

-- Insert Records

INSERT INTO Employee VALUES
(1,'Rahul',NULL),
(2,'Amit',1),
(3,'Priya',1),
(4,'Sneha',2),
(5,'Rohan',2);

-- Self Join Query

SELECT
    E.EmpID,
    E.EmpName AS Employee,
    M.EmpName AS Manager
FROM Employee E
LEFT JOIN Employee M
ON E.ManagerID = M.EmpID;