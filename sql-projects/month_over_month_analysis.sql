** Month-over-Month Performance Analysis **
-- This query compares total revenue for the current month vs the previous month.
-- Demonstrates: CTEs, date truncation, window functions, safe division, and KPI logic.
-- Part of my analytics portfolio (SQL Projects).

WITH monthly AS (
    SELECT
        DATE_TRUNC('month', order_date) AS month,
        SUM(amount) AS total_revenue
    FROM orders
    GROUP BY 1
),
comparison AS (
    SELECT
        month,
        total_revenue,
        LAG(total_revenue, 1) OVER (ORDER BY month) AS last_month_revenue
    FROM monthly
)
SELECT
    month,
    total_revenue,
    last_month_revenue,
    total_revenue - last_month_revenue AS revenue_change,
    ROUND(
        (total_revenue - last_month_revenue) / NULLIF(last_month_revenue, 0) * 100,
        2
    ) AS pct_change
FROM comparison
ORDER BY month DESC
LIMIT 2;
