E-commerce SQL Analytics Project (BigQuery)
Overview

This project demonstrates end-to-end SQL analytics on a real-world e-commerce dataset using Google BigQuery public data.
The analysis focuses on data quality validation, order trends, growth metrics, customer behavior, and revenue insights.

The goal of this project is to showcase practical SQL skills used by Data Analysts to answer business-driven questions.

Dataset

Source: Google BigQuery Public Dataset

Dataset name: bigquery-public-data.thelook_ecommerce

Primary table used: orders

This dataset represents an online retail platform with order lifecycle information such as creation time, shipment, delivery, order status, and customer identifiers.

Tools and Technologies

SQL (Standard SQL)

Google BigQuery

GitHub (project versioning and portfolio)
ecommerce-sql-analytics/
│
├── README.md
└── sql/
    ├── 01_data_quality_checks.sql
    ├── 02_order_trends.sql
    ├── 03_growth_metrics.sql
    ├── 04_customer_analysis.sql
    └── 05_revenue_metrics.sql
Analysis Breakdown
1. Data Quality Checks

File: 01_data_quality_checks.sql

Validated primary key uniqueness

Checked for NULL values in critical columns

Identified logical inconsistencies in timestamps

Ensured data reliability before analysis

Why it matters:
Reliable insights depend on clean and consistent data.

2. Order Trends Analysis

File: 02_order_trends.sql

Order distribution by status

Order volume trends by year and month

Identification of seasonal and long-term patterns

Business value:
Helps understand demand fluctuations and operational load.

3. Growth Metrics

File: 03_growth_metrics.sql

Month-over-month order growth

Trend comparison using window functions

Growth rate calculations using LAG

Business value:
Identifies growth momentum and changes in performance over time.

4. Customer Analysis

File: 04_customer_analysis.sql

New versus returning customer order percentages

First-order identification per customer

Customer behavior trends over time

Business value:
Supports customer acquisition and retention strategy decisions.

5. Revenue Metrics

File: 05_revenue_metrics.sql

Total revenue trends

Average Order Value (AOV)

Revenue contribution by customer type (new vs returning)

Business value:
Helps evaluate monetization efficiency and customer value.

Key SQL Concepts Demonstrated

GROUP BY and ORDER BY

COUNT and COUNTIF

DATE_TRUNC and EXTRACT

Window functions such as LAG and OVER

Common Table Expressions (CTEs)

Percentage and growth calculations

Data quality validation logic

How to Run

Open Google BigQuery Console

Select your project

Copy any SQL file from the sql folder

Run it against the table:
bigquery-public-data.thelook_ecommerce.orders

No local setup is required.

Skills Highlighted

SQL data analysis

Business metrics and KPIs

Data quality validation

Time series analysis

Customer segmentation

Analytical problem-solving
