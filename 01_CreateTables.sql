CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE University (
    UniversityID INT PRIMARY KEY,
    UniversityName VARCHAR(100),
    Location VARCHAR(100)
);

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    HOD VARCHAR(100)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Age INT,
    DepartmentID INT
);
SELECT * FROM Student; 
SELECT * FROM Department;
SELECT * FROM University;