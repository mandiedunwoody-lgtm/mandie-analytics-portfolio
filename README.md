# mandie-analytics-portfolio
A portfolio showcasing SQL, analytics, dashboards, and documentation.


   **Project Overview**

This project analyzes customer behavior using SQL and Power BI. It includes data modeling, KPI development, and dashboard creation to demonstrate core analytics skills such as retention analysis, churn identification, and revenue insights.



   **Repository Structure**
   
- /data – Raw and cleaned datasets
- /sql – Queries used for analysis and modeling
- /powerbi – PBIX file and dashboard assets
- /docs – Screenshots, notes, and supporting documentation
- README.md – Project summary and KPI definitions
  


   **Tools & Technologies**
  
- Power BI (data modeling, DAX, dashboard design)
- SQL (joins, aggregations, business logic)
- Excel / Google Sheets
- GitHub for version control and documentation



**KPI Definitions**

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

Average Revenue per Customer (ARPC)  
Total revenue ÷ number of active customers.

Customer Lifetime Value (simple)  
ARPC × average retention duration.


**Data Model Overview**

This project uses a simple star‑schema model to support customer analytics. The model includes:

Customers table – customer profiles and segmentation
Invoices table – transaction‑level data including dates and revenue
Date table – a full calendar table used for time‑intelligence and period comparisons

Relationships:

Customers (1) → Invoices (many)
Date (1) → Invoices (many)





![Dashboard Screenshot](https://github.com/mandiedunwoody-lgtm/mandie-analytics-portfolio/blob/1b715a2c51fe4773cd05d23431de3e8c30b3a967/sql-projects/powerbi-projects/powerbi-projects/Screenshot%202026-03-13%20180748.png?raw=true)

![Dashboard Screenshot](https://raw.githubusercontent.com/mandiedunwoody-lgtm/mandie-analytics-portfolio/1b715a2c51fe4773cd05d23431de3e8c30b3a967/sql-projects/powerbi-projects/powerbi-projects/Screenshot%202026-03-13%20181246.png)

![Dashboard Screenshot](https://raw.githubusercontent.com/mandiedunwoody-lgtm/mandie-analytics-portfolio/1b715a2c51fe4773cd05d23431de3e8c30b3a967/sql-projects/powerbi-projects/powerbi-projects/Screenshot%202026-03-13%20181329.png)




