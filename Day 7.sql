-- Stored Procedures --

USE employees;
SELECT * FROM employees;
DELIMITER $$
CREATE PROCEDURE Employee_details(IN EMP_ID INT)
BEGIN
	SELECT
    employee_name,
	gender,
	age,
	hire_date,
	designation,
	department_id,
	location_id,
	salary
FROM employees
WHERE employee_id = EMP_ID;
END $$

DELIMITER ;

CALL Employee_details(5005);

-- VIEWS --
CREATE VIEW Emp_Dept_View AS
SELECT CONCAT(first_name, ' ', last_name) AS Employee_name,
UPPER(department) AS DEPT
FROM names_employees;

SELECT * FROM Emp_Dept_View;

--------------------------------------------------------------------------------------------------------------------------------------------
USE employees;
CREATE TABLE Company_employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18)
    );
    
INSERT INTO Company_employees (employee_name, gender, age)
VALUES
('Priya Sharma', 'F', 26),
('Suresh Kumar', 'M', 32),
('Dhivya Rani', 'F', 29),
('Arun Raj', 'M', 24),
('Nisha Devi', 'F', 30);
Select * from Company_employees;

CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

INSERT INTO Salaries (employee_id, salary, bonus)
VALUES
(5001, 55000.00, 5000.00),
(5002, 48000.00, 3000.00),
(5003, 60000.00, 7000.00),
(5004, 52000.00, 4500.00),
(5005, 58000.00, 6000.00);
SELECT * FROM departments;
SELECT * FROM Salaries;
SELECT * FROM Company_employees;


CREATE VIEW Emp_Complex_View AS 
SELECT e.employee_name, e.gender, age , e.designation, d.department_id, d.department_name, s.salary_id, s.salary FROM employees AS e
JOIN departments AS d ON d.department_id = e.department_id
JOIN Salaries AS s ON s.employee_id = e.employee_id;

SELECT * FROM Emp_Complex_View;



