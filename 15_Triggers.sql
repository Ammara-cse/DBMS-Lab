-- Aim: To study Triggers

-- Create Teacher Table

CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(50),
    Subject VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- Create Log Table

CREATE TABLE Teacher_Log (
    Message VARCHAR(100)
);

-- Change Delimiter

DELIMITER //

-- Create Trigger

CREATE TRIGGER teacher_trigger
AFTER INSERT ON Teacher
FOR EACH ROW
BEGIN
    INSERT INTO Teacher_Log
    VALUES ('New Teacher Record Inserted');
END //

-- Restore Delimiter

DELIMITER ;

-- Insert Record

INSERT INTO Teacher
VALUES (101,'Rahul Sharma','DBMS',50000);

-- Display Teacher Table

SELECT * FROM Teacher;

-- Display Log Table

SELECT * FROM Teacher_Log;