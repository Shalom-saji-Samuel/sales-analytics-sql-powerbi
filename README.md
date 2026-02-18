# SQL → Power BI Sales Analytics Workflow
## Project Overview

This project demonstrates an end-to-end SQL → Power BI analytics workflow using a small wholesale-style sales dataset.

The goal was to simulate a real business scenario where raw transactional data is:

-  Ingested into SQL
-  Cleaned and modeled into a star schema
-  Loaded into Power BI for KPI tracking and interactive analysis

The final dashboard enables revenue monitoring, customer analysis, and product performance tracking.

---
## Dataset

- Rows: 80
- Time Period: Dec 2025 – Feb 2026
- Grain: One row per order line (transaction level)

### Fact Table — orders
- OrderID (PK)
- order_date
- customer_id (FK)
- product_id (FK)
- method_id (FK)
- quantity
- unit_price
- total_revenue (derived)

### Dimension Tables
- customers
- products
- payment_method
- datetable (Power BI date dimension)

---
## Data Modeling (SQL)
- A raw → cleaned → star schema approach was used:
### Cleaning & Transformation
- Converted text dates → proper DATE format
- Removed duplicate rows
- Split raw data into fact and dimension tables
- Created derived metric: total_revenue = quantity × unit_price

This mirrors a real ETL workflow at a small scale.

--- 
## Power BI Model
- Implemented a **star schema**
- One-to-many relationships from dimensions → fact table
- Dedicated Date table for time intelligence
### DAX Measures
**Core business KPIs**:
- Total Revenue
- Total Orders
- Average Order Value (AOV)
- Month-over-Month Revenue %
- Running Total Revenue

These measures support trend analysis and executive reporting.

--- 

📈 Dashboard Features
Executive Overview Page

KPI Cards (Revenue, Orders, AOV)

Revenue trend over time (line chart)

Revenue by product category (bar chart)

Revenue by payment method (bar chart)

Interactive slicers for time and category

Customer Analysis Page

Navigation via buttons

Customer-level purchase breakdown

Order details table

Advanced UX

Custom tooltip showing customer contribution using a donut chart

Controlled visual interactions for focused filtering

💡 Key Insights

Electronics generated the highest revenue among product categories

Card payments contributed the largest share of revenue

Total revenue reached 1.26K from only 387 units sold, indicating higher-value transactions

🛠️ Tools Used

MySQL → Data cleaning, transformation, star schema

Power BI → Data modeling, DAX, dashboard design

Excel → Synthetic data generation

🎯 Business Use Case

This dashboard simulates a wholesale sales monitoring system where stakeholders can:

Track revenue trends

Identify top product categories

Analyze payment behavior

Drill into customer purchasing patterns

🚀 Skills Demonstrated

SQL data cleaning & transformation

Star schema design

Fact vs dimension modeling

Time-intelligence DAX

Interactive Power BI UX (tooltips, navigation, slicers)

Business-focused insight generation
