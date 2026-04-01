# Sales Analytics: SQL to Power BI Workflow

---

## Project Overview

This project demonstrates an **end-to-end sales analytics workflow**, transforming raw data into a structured star schema and delivering business insights through a Power BI dashboard.

The objective was to simulate a real-world scenario where data is:

* Ingested and cleaned using SQL
* Modeled into a star schema for efficient analysis
* Visualized in Power BI for KPI tracking and decision-making

The final dashboard enables stakeholders to monitor **revenue performance, customer behavior, and product trends**.

---

## Business Questions

1. How does revenue change over time? 
2. Which product categories generate the most revenue?
3. What payment methods contribute most to total revenue?
4. How do customers differ in purchasing behavior?
5. What are the key drivers of overall sales performance?

---

## Key Insights
* **Revenue Change OVer time:** Revenue is extremely consistent , with most months showing similar revenue figures . 

* **Product Performance:** Electronics generated the highest revenue among all product categories, indicating strong demand for high-value items.

* **Payment Behavior:** Card payments contributed the largest share of total revenue, suggesting a preference for digital payment methods.

* **Customer Difference:** 40 % of customers bring in  54.7% of revenue , showing no drastic difference in customer value . 

* **Revenue Characteristics:** Total revenue reached approximately **1.26K from 387 units sold**, indicating a business model focused on **higher-value transactions rather than volume**.


---

## Tools Used

* **MySQL** → Data cleaning, transformation, and star schema modeling
* **Power BI** → Data modeling, DAX measures, and dashboard creation
* **Excel** → Synthetic dataset generation

---

## Dataset

* Rows: 80
* Time Period: Dec 2025 – Feb 2026
* Grain: One row per order line (transaction level)

---

## Dashboard Features

* KPI cards (Total Revenue, Total Orders, Average Order Value)
* Revenue trend over time
* Revenue by product category
* Revenue by payment method
* Customer-level drill-through analysis
* Interactive slicers for filtering
* Custom tooltips for enhanced insights

- Overview page :
<img width="1452" height="812" alt="image" src="https://github.com/user-attachments/assets/00e9bab7-9783-410e-a451-fb56979b7248" />

- Customers drillthrough page, can be shown using the 'Customer details' button in overview : 
<img width="1454" height="820" alt="image" src="https://github.com/user-attachments/assets/66c4d167-203c-4b77-a040-33b218c3145f" />

- Tool tip in action , in the overview page : 
<img width="1451" height="814" alt="image" src="https://github.com/user-attachments/assets/bff7a70f-393f-49f7-8b9b-8956ddd25cad" />

---

## Conclusion

This project demonstrates the ability to:

* Transform raw data into a structured analytical model
* Apply star schema design principles in SQL
* Build interactive dashboards for business decision-making
* Extract and communicate meaningful insights from data

It reflects a **complete end-to-end analytics workflow**, aligned with real-world business use cases.
