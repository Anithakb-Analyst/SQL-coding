CREATE DATABASE sales;
CREATE TABLE Orders (
    Order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    order_date DATE,
    total_amount DECIMAL(10,2)
);
CREATE TABLE Order_History (
    History_id INT PRIMARY KEY AUTO_INCREMENT,
    Order_id INT,
    customer_name VARCHAR(100),
    order_date DATE,
    total_amount DECIMAL(10,2),
    deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO Orders (customer_name, order_date, total_amount)
VALUES
('Priya bhavani', '2025-11-01', 2500.00),
('Suresh Kumar', '2025-11-03', 1800.00),
('Anitha KB', '2025-11-05', 3200.50),
('Ravi Raj', '2025-11-07', 1500.75),
('Divya Priya', '2025-11-09', 4200.00);

SELECT * FROM Orders;
SELECT * FROM Order_History;

TRUNCATE TABLE Orders;
TRUNCATE TABLE Order_History;
-- Trigger to insert deleted rows into Order History --

DELIMITER $$
CREATE TRIGGER After_order_delete
AFTER DELETE ON Orders
FOR EACH ROW
BEGIN
    INSERT INTO Order_History (Order_id, customer_name, order_date, total_amount)
    VALUES (OLD.order_id, OLD.customer_name, OLD.order_date, OLD.total_amount);
END$$

DELIMITER ;

-- testing --
DELETE FROM Orders WHERE customer_name = 'Divya Priya';

-- DCL COMMANDS --
-- Grant reporting access to junior analysts--
CREATE USER 'Juni_analyst'@'localhost' IDENTIFIED BY '123456789';
GRANT SELECT, INSERT, DELETE ON COLLEGE.* TO Juni_analyst@localhost;
SHOW GRANTS FOR 'Juni_analyst'@'localhost';
REVOKE INSERT ON COLLEGE.* FROM Juni_analyst@localhost;
