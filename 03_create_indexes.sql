USE SQLPracticeDB;

SET STATISTICS IO ON;
GO
SELECT * FROM Orders WHERE customer_id = 1;

CREATE INDEX IX_Orders_CustomerID ON Orders(customer_id);
CREATE INDEX IX_Orders_OrderDate ON Orders(order_date);

CREATE INDEX IX_OrderItems_OrderID_ProductID ON OrderItems(order_id, product_id) INCLUDE (quantity, unit_price);

SELECT * FROM Orders WHERE customer_id = 1;

SELECT 
    i.name AS index_name,
    t.name AS table_name,
    i.type_desc
FROM sys.indexes i
JOIN sys.tables t ON i.object_id = t.object_id
WHERE t.name = 'Orders' AND i.name IS NOT NULL;