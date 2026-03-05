-- Example SQL Data Cleaning Script
-- Demonstrates trimming, standardizing, and handling nulls

SELECT
    TRIM(customer_name) AS customer_name_clean,
    LOWER(email) AS email_clean,
    COALESCE(phone_number, 'Missing') AS phone_number_clean,
    CASE 
        WHEN country IN ('usa', 'US', 'United States') THEN 'United States'
        ELSE country
    END AS standardized_country
FROM raw_customers;
