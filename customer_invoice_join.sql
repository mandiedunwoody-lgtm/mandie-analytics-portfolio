-- Join invoices with customer details
CREATE TABLE final_customer_invoices AS
SELECT
    i.invoice_id,
    i.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    c.country,
    c.segment,
    c.signup_date,
    i.invoice_date,
    i.amount,
    i.status
FROM invoices AS i
LEFT JOIN customers AS c
    ON i.customer_id = c.customer_id;

-- Preview the first 10 rows
SELECT * FROM final_customer_invoices
LIMIT 10;
