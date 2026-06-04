-- Aim: To study NULL Values

USE CollegeDB;

-- Create Employee Table

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary INT,
    Email VARCHAR(100)
);

-- Insert Records

INSERT INTO Employee VALUES
(1,'Ammara',25000,'ammara@gmail.com'),
(2,'Ali',30000,NULL),
(3,'Sara',28000,'sara@gmail.com'),
(4,'Ahmed',35000,NULL);

-- Display All Records

SELECT * FROM Employee;

-- Find Employees with NULL Email

SELECT *
FROM Employee
WHERE Email IS NULL;

-- Find Employees with Email Available

SELECT *
FROM Employee
WHERE Email IS NOT NULL;

-- Find Employees with NULL Salary

SELECT *
FROM Employee
WHERE Salary IS NULL;