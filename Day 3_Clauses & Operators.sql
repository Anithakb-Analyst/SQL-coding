CREATE DATABASE University;
USE University;
CREATE TABLE students (
sl_No INT PRIMARY KEY,
student_name VARCHAR (100),
department VARCHAR(100),
contact_numbers INT,
email_ID VARCHAR (500)
);
SELECT * FROM students;


INSERT INTO students 
VALUES 
(1, 'priya', 'cse',95665451, 'priya123@gmail.com'),
(2, 'dhivya','ece',98777477, 'dhivya321@gmail.com'),
(3, 'suresh','mech',987764537, NULL),
(4, 'deepak', 'civil',63334968, 'deepak789@gmail.com'),
(5, 'nisha', 'ece',458785,'nisha123@gmail.com');
TRUNCATE table students;

-- DISTINCT & WHERE --
SELECT DISTINCT department FROM students;

-- IS NULL & NOT NULL --
SELECT * FROM students WHERE email_ID IS NULL;
SELECT * FROM students WHERE email_ID IS NOT NULL;

-- IN, BETWEEN, NOT BETWEEN --
ALTER TABLE students
ADD COLUMN GPA INT;
ALTER TABLE students
MODIFY COLUMN GPA DECIMAL (10,1);
INSERT INTO students 
VALUES 
(1, 'priya', 'cse',95665451, 'priya123@gmail.com', 8.5),
(2, 'dhivya','ece',98777477, 'dhivya321@gmail.com',9),
(3, 'suresh','mech',987764537, NULL,7.8),
(4, 'deepak', 'civil',63334968, 'deepak789@gmail.com',8.3),
(5, 'nisha', 'ece',458785,'nisha123@gmail.com',6.5);

SELECT * FROM students WHERE department IN ('ece','cse');
SELECT * FROM students WHERE GPA BETWEEN 7 AND 10;
SELECT * FROM students WHERE GPA NOT BETWEEN 8 AND 10;













