# mandie-analytics-portfolio
A portfolio showcasing SQL, analytics, dashboards, and documentation.


  Project Overview

This project analyzes customer behavior using SQL and Power BI. It includes data modeling, KPI development, and dashboard creation to demonstrate core analytics skills such as retention analysis, churn identification, and revenue insights.


   Repository Structure
- /data – Raw and cleaned datasets
- /sql – Queries used for analysis and modeling
- /powerbi – PBIX file and dashboard assets
- /docs – Screenshots, notes, and supporting documentation
- README.md – Project summary and KPI definitions
  

   Tools & Technologies
- Power BI (data modeling, DAX, dashboard design)
- SQL (joins, aggregations, business logic)
- Excel / Google Sheets
- GitHub for version control and documentation


  KPI Definitions

Total Customers  
Count of unique customers in the dataset.

Active Customers  
Customers with at least one purchase in the selected period.

Returning Customers  
Customers who purchased in both the previous period and the current period.

Retention Rate  
Returning Customers ÷ Total Customers.

Churn Rate  
Customers who purchased in the previous period but not in the current period.


Data Model Overview

This project uses a simple star‑schema model to support customer analytics. The model includes:

Customers table – customer profiles and segmentation
Invoices table – transaction‑level data including dates and revenue
Date table – a full calendar table used for time‑intelligence and period comparisons

Relationships:

Customers (1) → Invoices (many)
Date (1) → Invoices (many)

A diagram of the model will be added once the Power BI dashboard is finalized.

Dashboard Preview
Screenshots coming soon.


Average Revenue per Customer (ARPC)  
Total revenue ÷ number of active customers.

Customer Lifetime Value (simple)  
ARPC × average retention duration.
