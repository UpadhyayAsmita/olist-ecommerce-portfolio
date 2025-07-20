CREATE MATERIALIZED VIEW mv_monthly_sales AS
SELECT
    DATE_TRUNC('month', order_purchase_timestamp) AS month,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(price) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY 1
ORDER BY 1;

CREATE MATERIALIZED VIEW mv_top_customers AS
SELECT
    c.customer_id,
    c.customer_unique_id,
    SUM(oi.price) AS total_spent,
    COUNT(DISTINCT o.order_id) AS orders_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY 1, 2
ORDER BY total_spent DESC
LIMIT 10;
