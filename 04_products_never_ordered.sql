USE SQLPracticeDB;

SELECT product_name, price
FROM Products
WHERE product_id NOT IN (
    SELECT DISTINCT product_id FROM OrderItems
);