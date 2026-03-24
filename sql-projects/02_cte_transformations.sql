-- CTE Transformation Example: Clean → Monthly Revenue → Final Output
WITH cleaned AS (
    SELECT
        customer_id,
        DATE(invoice_date) AS invoice_date,
        amount
    FROM invoices
    WHERE amount > 0
),
monthly AS (
    SELECT
        customer_id,
        STRFTIME('%Y-%m', invoice_date) AS month,
        SUM(amount) AS monthly_revenue
    FROM cleaned
    GROUP BY customer_id, month
)
SELECT
    customer_id,
    month,
    monthly_revenue
FROM monthly
ORDER BY customer_id, month;
