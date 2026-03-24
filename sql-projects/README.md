  SQL Projects

This folder contains SQL case studies that demonstrate practical, real‑world analytics skills used in data, insights, and business analyst roles. Each project focuses on clear business logic, clean query structure, and interpretable outputs.

   Customer Retention & Churn Analysis
This project analyzes customer activity over time to identify churn events, retention patterns, and monthly customer counts. It includes:

- Data cleaning and standardization
- Monthly revenue aggregation
- Active vs. inactive customer logic
- Window functions to detect churn transitions
- Monthly churn rate calculation

This type of analysis is commonly used in SaaS, product analytics, and customer insights roles.

   Purpose of This Folder
These SQL examples are designed to show:
- Ability to work with transactional datasets
- Comfort with joins, aggregations, and window functions
- Skill in structuring queries using CTEs
- Understanding of business metrics and KPIs
- Clear, readable SQL with comments and explanations

# SQL Projects

This folder contains SQL queries that demonstrate my ability to work with structured data, perform analytical transformations, and generate business‑ready insights. Each file highlights a different analytical technique or business question.

---

## Month‑Over‑Month Analysis  
**File:** `month_over_month_analysis.sql`  
**Purpose:** Compare total revenue for the current month vs. the previous month.

### What this query demonstrates:
- Use of **CTEs** for clean query structure  
- **Date truncation** to aggregate by month  
- **Window functions** (`LAG`) to compare periods  
- **Safe division** using `NULLIF`  
- **KPI calculation** (absolute and percentage change)

### Business value:
Month‑over‑month analysis helps identify trends, seasonality, and performance shifts. It’s commonly used in:
- Revenue tracking  
- User activity monitoring  
- Retention and churn analysis  
- Operational performance reviews  

---

## Customer Invoice Join  
**File:** `customer_invoice_join.sql`  
**Purpose:** Combine customer and invoice data into a single, analysis‑ready table.

### What this query demonstrates:
- A practical **LEFT JOIN** between two related tables  
- Creating a clean, enriched dataset  
- Basic data transformation (full customer name, segment, country)  
- Real‑world SQL used in reporting, dashboards, and product analytics  

### Business value:
This type of join is used constantly in analytics. It connects customer attributes with financial or behavioral data, enabling analysis of:
- Customer value  
- Purchase patterns  
- Segment performance  
- Retention and churn indicators  

### SQL:
```sql
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
```

---

## Additional SQL Scripts  
These files demonstrate a range of analytical and data‑engineering skills.

---

### **01_window_functions.sql**  
**Purpose:** Showcases analytical window functions using cumulative revenue per customer.  
**Key Concepts Demonstrated:**  
- `SUM() OVER` for running totals  
- Partitioning by customer  
- Ordered analytical calculations  
**Business Use Case:** Track how customer value grows over time.

---

### **02_cte_transformations.sql**  
**Purpose:** Demonstrates multi‑step transformations using Common Table Expressions (CTEs).  
**Key Concepts Demonstrated:**  
- Layered CTEs  
- Data cleaning → aggregation → final output  
- Monthly revenue modeling  
**Business Use Case:** Understand customer revenue trends at a monthly level.

---

### **03_data_cleaning.sql**  
**Purpose:** Provides a realistic data‑cleaning pipeline for customer and invoice tables.  
**Key Concepts Demonstrated:**  
- Email normalization  
- Null handling  
- Date standardization  
- Duplicate removal  
**Business Use Case:** Prepare raw transactional data for accurate reporting and analysis.

---

### **04_segmentation.sql**  
**Purpose:** Segments customers into value tiers based on total spend.  
**Key Concepts Demonstrated:**  
- Aggregation  
- CASE‑based segmentation  
- Customer value modeling  
**Business Use Case:** Identify high‑value customers for retention and marketing strategies.

---

If you'd like to explore the SQL or see how it connects to dashboards or analysis, feel free to browse the files in this directory.

---

```text
customers        1 ─── ∞        invoices
customer_id (PK)              invoice_id (PK)
first_name                    customer_id (FK)
last_name                     invoice_date
email                         amount
country                       status
segment
signup_date

LEFT JOIN → final_customer_invoices
customer_id
customer_name (derived)
country
segment
signup_date
invoice_id
invoice_date
amount
status
```


# ERD Overview
The data model follows a standard customer → invoice relationship:

-Each customer can have many invoices
-Each invoice belongs to exactly one customer
-The final_customer_invoices table is a denormalized, analysis‑ready table created using a LEFT JOIN

**This structure supports:**
-Revenue analysis
-Customer segmentation
-Retention and churn modeling
-Month‑over‑month performance tracking
-Dashboarding in Power BI or Tableau


Here is the ERD:


![Customer Invoice ERD](erd_customer_invoices.png)


This is the next section.





