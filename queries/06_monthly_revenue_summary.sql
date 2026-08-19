USE SQLPracticeDB;

SELECT 
    YEAR(o.order_date) AS order_year,
    MONTH(o.order_date) AS order_month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity * oi.unit_price) AS monthly_revenue
FROM Orders o
JOIN OrderItems oi ON o.order_id = oi.order_id
WHERE o.status = 'Completed'
GROUP BY YEAR(o.order_date), MONTH(o.order_date)
ORDER BY order_year, order_month;
