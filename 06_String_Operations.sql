-- Aim: To perform String Operations using LIKE Operator

USE CollegeDB;

-- Create Table

CREATE TABLE Instructor (
    ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Insert Records

INSERT INTO Instructor VALUES
(1,'Ammara'),
(2,'Ahmed'),
(3,'Sardar'),
(4,'Ali'),
(5,'Arman'),
(6,'Karan'),
(7,'Darshan');

-- Names starting with A

SELECT Name
FROM Instructor
WHERE Name LIKE 'A%';

-- Names ending with A

SELECT Name
FROM Instructor
WHERE Name LIKE '%a';

-- Names containing AR

SELECT Name
FROM Instructor
WHERE Name LIKE '%ar%';

-- Names starting with S

SELECT Name
FROM Instructor
WHERE Name LIKE 'S%';

-- Names ending with N

SELECT Name
FROM Instructor
WHERE Name LIKE '%n';

-- Names with second letter A

SELECT Name
FROM Instructor
WHERE Name LIKE '_a%';

-- Names having exactly 3 characters

SELECT Name
FROM Instructor
WHERE Name LIKE '___';

-- Names having at least 3 characters

SELECT Name
FROM Instructor
WHERE Name LIKE '___%';

-- Names starting with A and ending with A

SELECT Name
FROM Instructor
WHERE Name LIKE 'A%a';

-- Names containing DAR

SELECT Name
FROM Instructor
WHERE Name LIKE '%dar%';

-- Match the string 100%

SELECT '100%'
LIKE '100\%' ESCAPE '\';