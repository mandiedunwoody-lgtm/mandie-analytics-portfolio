-- Window Function Example: Running Total Spend Per Customer
SELECT
    customer_id,
    customer_name,
    invoice_date,
    amount,
    SUM(amount) OVER (
        PARTITION BY customer_id
        ORDER BY invoice_date
    ) AS running_total
FROM final_customer_invoices
ORDER BY customer_id, invoice_date;
