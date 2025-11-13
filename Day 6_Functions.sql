USE employees;
CREATE TABLE Clean_employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE DEFAULT (CURRENT_DATE)
);

INSERT INTO Clean_employees (employee_name, gender, age, department, salary)
VAlUES 
('Priya', 'F', 28, 'IT', 55000.00),
('Suresh', 'M', 32, 'MECH', 48000.00),
('dhivya', 'F', 26, 'ECE', 52000.00),
('karthik', 'M', 30, 'IT', 60000.00),
('Preethi', 'F', 28, 'ECE', 55000.00),
('ramesh', 'M', 31, 'MECH', 48000.00),
('lekha', 'F', 26, 'cse', 52000.00),
('meena', 'M', 30, 'IT', 60000.00),
('shija', 'F', 26, 'ECE', 52000.00),
('Smirthi', 'M', 30, 'IT', 60000.00),
('preethi', 'F', 28, 'ECE', 55000.00),
('naresh', 'M', 31,'IT', 48000.00),
('Diya', 'F', 26, 'CSE', 52000.00),
('Karthka', 'M', 30, 'IT', 60000.00),
('deerana', 'F', 26, 'IT', 52000.00),
('Preethi', 'F', 28, 'ECE', 55000.00),
('tharesh','M', 31,'IT', 48000.00),
('diva', 'F', 26, 'CSE', 52000.00),
('Karika', 'M', 30, 'IT', 60000.00),
('Deesna', 'F', 26, 'IT', 52000.00),
('kavin', 'M', 30, 'IT', 60000.00),
('riyan', 'M', 30, 'IT', 60000.00);

SELECT * FROM Clean_employees;
-- UPPER --
SELECT UPPER(employee_name) AS UPPER_NAME FROM Clean_employees;
-- LOWER -- 
SELECT LOWER(department) AS LOWER_DEPT FROM Clean_employees;
-- SUBSTRING -- 
SELECT SUBSTRING(department,1,3) AS DEPT_SHORT FROM Clean_employees;
-- CONCAT -- 
SELECT CONCAT(employee_name,' has joined on ',hire_date,' and gets paid ',salary) AS Emp_info FROM Clean_employees;

