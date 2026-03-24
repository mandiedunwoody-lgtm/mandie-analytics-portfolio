-- Segmentation Query: Customer Value Tiers
WITH totals AS (
    SELECT
        customer_id,
        customer_name,
        SUM(amount) AS total_spend
    FROM final_customer_invoices
    GROUP BY customer_id
)
SELECT
    customer_id,
    customer_name,
    total_spend,
    CASE
        WHEN total_spend >= 1000 THEN 'High Value'
        WHEN total_spend BETWEEN 500 AND 999 THEN 'Mid Value'
        ELSE 'Low Value'
    END AS segment
FROM totals
ORDER BY total_spend DESC;
