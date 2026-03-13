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


**Dashboard Preview**


![Dashboard Screenshot](https://github.com/mandiedunwoody-lgtm/mandie-analytics-portfolio/blob/1b715a2c51fe4773cd05d23431de3e8c30b3a967/sql-projects/powerbi-projects/powerbi-projects/Screenshot%202026-03-13%20180748.png?raw=true)

![Dashboard Screenshot](https://raw.githubusercontent.com/mandiedunwoody-lgtm/mandie-analytics-portfolio/1b715a2c51fe4773cd05d23431de3e8c30b3a967/sql-projects/powerbi-projects/powerbi-projects/Screenshot%202026-03-13%20181246.png)

![Dashboard Screenshot](https://raw.githubusercontent.com/mandiedunwoody-lgtm/mandie-analytics-portfolio/1b715a2c51fe4773cd05d23431de3e8c30b3a967/sql-projects/powerbi-projects/powerbi-projects/Screenshot%202026-03-13%20181329.png)



**Project Summary**

This project demonstrates a full customer‑retention analysis workflow, combining SQL for data preparation and Power BI for modeling, DAX calculations, and interactive dashboard design. The final report highlights key customer metrics—including retention, churn, revenue behavior, and purchasing patterns—to support data‑driven decision‑making. This work showcases my ability to build clean data models, define meaningful KPIs, and design clear, modern dashboards that communicate insights effectively.


**Skills Demonstrated**

**Data Modeling & Architecture**
-Designed a clean star‑schema model (Customers, Invoices, Date) to support retention and revenue analytics.
-Applied relationship management and data‑type optimization for efficient reporting.

**DAX & KPI Development**
-Built core business metrics including Retention Rate, Churn Rate, ARPC, and Customer Lifetime Value.
-Used time‑intelligence functions and filter‑context logic to create accurate period comparisons.

**SQL for Data Preparation**
-Wrote queries for joins, aggregations, and business‑logic transformations.
-Cleaned and structured raw customer and invoice data for downstream modeling.

**Dashboard Design & Visualization**
-Created a modern, insight‑driven Power BI dashboard with clear KPIs and intuitive navigation.
-Applied consistent color themes, layout structure, and visual hierarchy for readability.

**Analytical Storytelling**
-Translated raw data into actionable insights around customer behavior, retention patterns, and revenue trends.
-Highlighted business implications and opportunities for improvement.

**Version Control & Documentation**
-Organized project assets into a professional GitHub structure.
-Documented KPIs, data model decisions, and dashboard visuals for transparency and clarity.


**Future Enhancements**

**Add Customer Segmentation**  
Introduce clustering or rule‑based segmentation (e.g., high‑value, at‑risk, new customers) to deepen behavioral insights.

**Incorporate Predictive Modeling**  
Use machine learning or statistical methods to forecast churn probability and customer lifetime value.

**Expand Revenue Metrics**  
Include cohort‑based revenue tracking, repeat purchase frequency, and contribution margin analysis.

**Enhance Dashboard Interactivity**  
Add drill‑through pages, tooltips, and dynamic navigation to improve user exploration and insight discovery.

**Automate Data Refresh**  
Connect to a live database or scheduled data pipeline to keep retention metrics continuously updated.

**Add Benchmarking & Targets**  
Introduce goal lines, thresholds, or industry benchmarks to contextualize performance.
