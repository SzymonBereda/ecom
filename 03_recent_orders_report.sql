USE SQLPracticeDB;

WITH RecentOrders AS (
    SELECT *
    FROM Orders
    WHERE order_date >= DATEADD(DAY, -30, (SELECT MAX(order_date) FROM Orders))
)
SELECT 
    ro.order_id,
    c.first_name + ' ' + c.last_name AS customer_name,
    ro.order_date,
    ro.status
FROM RecentOrders ro
JOIN Customers c ON ro.customer_id = c.customer_id
ORDER BY ro.order_date DESC;