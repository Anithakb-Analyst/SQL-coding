CREATE DATABASE if not exists college;
USE college;
CREATE TABLE students
(Enrollment_ID INT PRIMARY KEY,
Students_name VARCHAR (100) NOT NULL,
Course_ID INT,
age INT,
contact_number BIGINT UNIQUE,
email_id VARCHAR (200)
);

INSERT INTO students ( Enrollment_ID, Course_ID, Students_name,age,contact_number,email_id)
VALUES 
(101, 2,'Dhivya', 21, 9456721685, 'dhivya123@gmail.com'),
(102,4, 'Priya', 20, '9876543210', 'priya123@gmail.com'),
(103,NULL, 'Suresh', 22, '9867543210', 'suresh456@gmail.com'),
(104,3,'Diya', 21, 9456774685, 'dhivyaa123@gmail.com'),
(105,4, 'Shriya', 20, '9876543218', 'shriya123@gmail.com'),
(106,2, 'Raaji', 22, '9867543151',NULL),
(107,3, 'riya', 19, '9877764544', 'riya321@gmail.com');

SELECT * FROM students;

CREATE TABLE courses
(Course_ID INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(200),
course_fee DECIMAL (10,2),
College_Name VARCHAR(250) DEFAULT 'GOVT COLLEGE OF ENGINEERING'
);


SELECT * FROM COURSES;	

INSERT INTO courses ( course_name,course_fee)
VALUES 
('Computer Science', 250000.00),
('Mechanical Engineering',240000.00),
('Electronics and Communication',230000.00),
('Civil Engineering', 220000.00);

SELECT s.Students_name,c.Course_ID,c.course_name
FROM students AS s
JOIN courses as c
ON c.Course_ID = s.Course_ID;

-- LEFT JOIN --
SELECT s.Students_name,c.Course_ID,c.course_name
FROM students AS s
LEFT JOIN courses as c
ON c.Course_ID = s.Course_ID;

-- RIGHT JOIN --
SELECT s.Students_name,c.Course_ID,c.course_name
FROM students AS s
RIGHT JOIN courses as c
ON c.Course_ID = s.Course_ID;
-- -------------------------------------------------------------------------------------------------------------------------------------
-- UNION & UNION ALL--
CREATE TABLE Current_employees (
  employee_id INT PRIMARY KEY AUTO_INCREMENT,
  employee_name VARCHAR(100) NOT NULL,
  gender ENUM ('M','F'),
  age INT,
  department VARCHAR(100),
  salary DECIMAL(10,2),
  hire_date DATE
);

INSERT INTO Current_employees 
(employee_name, gender, age, department, salary, hire_date)
VALUES
('Riya', 'F', 28, 'HR', 55000.00, '2020-01-15'),
('Kathir', 'M', 32, 'IT', 60000.00, '2019-03-10'),
('Shriya', 'F', 26, 'Finance', 52000.00, '2021-07-22'),
('Remo', 'M', 30, 'Sales', 48000.00, '2018-09-25'),
('Meera', 'F', 29, 'Marketing', 50000.00, '2022-04-18')
;

SELECT * FROM Current_employees;

CREATE TABLE Past_employees (
  employee_id INT PRIMARY KEY AUTO_INCREMENT,
  employee_name VARCHAR(100) NOT NULL,
  gender ENUM ('M','F'),
  age INT,
  department VARCHAR(100),
  salary DECIMAL(10,2),
  hire_date DATE
);

INSERT INTO Past_employees 
(employee_name, gender, age, department, salary, hire_date)
VALUES
('Ramu', 'M', 29, 'HR', 54000.00, '2020-01-15'),
('Dheeraj', 'M', 28, 'Finance', 65000.00, '2019-05-10'),
('Shriya', 'F', 26, 'Finance', 52000.00, '2021-07-22'),
('Krithik', 'M', 33, 'Marketing', 43000.00, '2018-07-25'),
('Meera', 'F', 29, 'Marketing', 50000.00, '2022-04-18')
;

Select * from Past_employees;

-- UNION --
Select employee_id, employee_name,department  
from current_employees
UNION
Select employee_id, employee_name,department  
from Past_employees;

-- UNION ALL --
Select employee_id, employee_name,department  
from current_employees
UNION ALL
Select employee_id, employee_name,department  
from Past_employees;

