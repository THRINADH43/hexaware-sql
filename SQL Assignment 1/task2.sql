-- 2.1:
SELECT FirstName, LastName, Email FROM Customers;

-- 2.2:
SELECT o.OrderID, o.OrderDate, c.FirstName, c.LastName
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

-- 2.3:
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address)
VALUES ('Jane', 'Smith', 'jane.smith@example.com', '9876543210', '456 Oak Avenue');

-- 2.4:
UPDATE Products SET Price = Price * 1.10;

-- 2.5:
DELETE FROM OrderDetails WHERE OrderID = 1;
DELETE FROM Orders WHERE OrderID = 1;

-- 2.6:
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES (1, '2024-04-15', 299.99);

-- 2.7:
UPDATE Customers SET Email = 'new.email@example.com', Address = '789 Pine Road' WHERE CustomerID = 1;

-- 2.8:
UPDATE Orders SET TotalAmount = (
  SELECT SUM(Products.Price * OrderDetails.Quantity)
  FROM OrderDetails
  JOIN Products ON OrderDetails.ProductID = Products.ProductID
  WHERE OrderDetails.OrderID = Orders.OrderID
);

-- 2.9:
DELETE FROM OrderDetails WHERE OrderID IN (SELECT OrderID FROM Orders WHERE CustomerID = 1);
DELETE FROM Orders WHERE CustomerID = 1;

-- 2.10:
INSERT INTO Products (ProductName, Description, Price)
VALUES ('Gadget X', 'Latest tech gadget', 199.99);

-- 2.11:
-- Pending yet to do

-- 2.12:
-- Pending yet to do
