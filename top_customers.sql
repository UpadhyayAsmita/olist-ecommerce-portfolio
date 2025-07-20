-- queries
SELECT
    c.customer_id,
    c.customer_unique_id,
    SUM(oi.price) AS total_spent,
    COUNT(DISTINCT o.order_id) AS orders_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.customer_unique_id
ORDER BY total_spent DESC
LIMIT 20;
