USE SQLPracticeDB;

SELECT 
    o.customer_id,
    c.first_name + ' ' + c.last_name AS customer_name,
    o.order_id,
    o.order_date,
    LAG(o.order_date) OVER (PARTITION BY o.customer_id ORDER BY o.order_date) AS previous_order_date,
    DATEDIFF(DAY, LAG(o.order_date) OVER (PARTITION BY o.customer_id ORDER BY o.order_date), o.order_date) AS days_since_last_order
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
ORDER BY o.customer_id, o.order_date;
