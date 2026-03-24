-- Data Cleaning Script for Customers + Invoices

-- Normalize emails
UPDATE customers
SET email = LOWER(TRIM(email));

-- Convert zero amounts to NULL
UPDATE invoices
SET amount = NULL
WHERE amount = 0;

-- Remove rows with missing invoice dates
DELETE FROM invoices
WHERE invoice_date IS NULL;

-- Standardize date format
UPDATE invoices
SET invoice_date = DATE(invoice_date);

-- Remove duplicate invoice_ids
DELETE FROM invoices
WHERE rowid NOT IN (
    SELECT MIN(rowid)
    FROM invoices
    GROUP BY invoice_id
  );
