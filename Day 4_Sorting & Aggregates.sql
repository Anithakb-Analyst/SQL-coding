	CREATE DATABASE ECOMMERCE;
USE ECOMMERCE;
CREATE TABLE products(
product_id INT auto_increment primary key,
product_name VARCHAR(100),
price DECIMAL(10,2));

INSERT INTO products (product_name,price)
VALUES ('laptop',50000),
('headphones',2000),
('earbuds', 900),
('speakers',6000),
('home theatre', 10000),
('projector', 17000);
Truncate products;
SELECT * FROM products; 
-- ORDER BY AND LIMIT ---
SELECT * FROM products ORDER BY price desc limit 3;

CREATE TABLE sales (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE,
customer_name VARCHAR (100),
product_name VARCHAR (100),
price DECIMAL (10,2));

INSERT INTO sales (order_date, customer_name, product_name, price)
VALUES
('2025-01-30', 'Priya', 'Laptop', 50000.00),
('2025-02-15', 'Suresh', 'Headphones', 2000.00),
('2025-02-20', 'Dhivya', 'Earbuds', 900.00),
('2025-06-30', 'Kishore', 'Headphones', 2000.00),
('2025-07-20', 'Priya', 'Laptop', 50000.00),
('2025-08-30', 'Smirthi', 'Projector', 17000.00),
('2025-09-24', 'Suresh', 'Earbuds', 900.00),
('2025-11-19', 'Karthik', 'Speakers', 6000.00);
Truncate sales;

SELECT * FROM sales;
-- AGGREGAGTE FUNCTIONS ---

SELECT product_name, COUNT(*) FROM sales GROUP BY product_name;
SELECT customer_name, SUM(price) FROM sales AS Total_purchase GROUP BY customer_name;
SELECT product_name, ROUND(AVG(price),2) FROM sales GROUP BY product_name;

SELECT customer_id, customer_name, MAX(order_date) AS latest_order_date FROM sales
GROUP BY customer_id, customer_name
ORDER BY Order_date DESC;

SELECT customer_id, customer_name, Min(price) AS lowest_purchase FROM sales
GROUP BY customer_id, customer_name
ORDER BY price ASC;

---- GROUP BY & HAVING ---

CREATE DATABASE EMP;
USE EMP;
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE DEFAULT (CURRENT_DATE)
);

INSERT INTO employees (employee_name, gender, age, department, salary)
VAlUES 
('Priya', 'F', 28, 'IT', 55000.00),
('Suresh', 'M', 32, 'MECH', 48000.00),
('Dhivya', 'F', 26, 'ECE', 52000.00),
('Karthik', 'M', 30, 'IT', 60000.00),
('Preethi', 'F', 28, 'ECE', 55000.00),
('ramesh', 'M', 31, 'MECH', 48000.00),
('Lekha', 'F', 26, 'cse', 52000.00),
('Meena', 'M', 30, 'IT', 60000.00),
('shija', 'F', 26, 'ECE', 52000.00),
('Smirthi', 'M', 30, 'IT', 60000.00),
('Preethi', 'F', 28, 'ECE', 55000.00),
('naresh', 'M', 31,'IT', 48000.00),
('Diya', 'F', 26, 'CSE', 52000.00),
('Karthka', 'M', 30, 'IT', 60000.00),
('Deerana', 'F', 26, 'IT', 52000.00),
('Preethi', 'F', 28, 'ECE', 55000.00),
('tharesh','M', 31,'IT', 48000.00),
('Diva', 'F', 26, 'CSE', 52000.00),
('Karika', 'M', 30, 'IT', 60000.00),
('Deesna', 'F', 26, 'IT', 52000.00),
('Kavin', 'M', 30, 'IT', 60000.00),
('riyan', 'M', 30, 'IT', 60000.00);


Truncate table employees;
SELECT * FROM employees; 

SELECT department, count(employee_name) AS total_employees from employees 
GROUP BY department
HAVING total_employees > 10; 









