USE SQLPracticeDB;

SELECT 
    c.customer_id,
    c.first_name + ' ' + c.last_name AS customer_name,
    SUM(oi.quantity * oi.unit_price) AS total_spent,
    RANK() OVER (ORDER BY SUM(oi.quantity * oi.unit_price) DESC) AS spending_rank,
    SUM(SUM(oi.quantity * oi.unit_price)) OVER (ORDER BY SUM(oi.quantity * oi.unit_price) DESC) AS running_total
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
WHERE o.status = 'Completed'
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY spending_rank;