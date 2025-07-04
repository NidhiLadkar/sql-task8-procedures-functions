USE ecommerce_db;
-- 🔧 Procedure: Insert a new customer
DELIMITER //

CREATE PROCEDURE AddCustomer(
    IN p_Name VARCHAR(100),
    IN p_Email VARCHAR(100),
    IN p_Address TEXT,
    IN p_Phone VARCHAR(15)
)
BEGIN
    INSERT INTO customers (Name, Email, Address, Phone)
    VALUES (p_Name, p_Email, p_Address, p_Phone);
END;
//

DELIMITER ;

-- ✅ Call the procedure
CALL AddCustomer('Aarav', 'aarav@example.com', 'Mumbai', '9999988888');

------------------------------------------------------------

-- 📐 Function: Get total orders by a customer
DELIMITER //

CREATE FUNCTION TotalOrdersByCustomer(cust_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM orders
    WHERE CustomerID = cust_id;
    RETURN total;
END;
//

DELIMITER ;

-- ✅ Use the function
SELECT Name, TotalOrdersByCustomer(CustomerID) AS total_orders
FROM customers;
