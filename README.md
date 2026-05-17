# Retail ETL Data Engineering Project

## Project Overview
This project demonstrates an end-to-end Retail ETL (Extract, Transform, Load) pipeline using Python, Pandas, MySQL, and SQLAlchemy.

The project extracts retail sales data from CSV files, cleans and transforms the data, and loads it into a MySQL database for analysis.

---

# Technologies Used

- Python
- Pandas
- MySQL
- SQLAlchemy
- PyMySQL
- SQL
- VS Code
- Git & GitHub

---

# Project Structure

Retail_Data_Engineering_Project/
│
├── data/
│   ├── customers.csv
│   ├── products.csv
│   └── orders.csv
│
├── output/
│   └── cleaned_orders.csv
│
├── scripts/
│   ├── etl_pipeline.py
│   ├── data_cleaning.py
│   └── load_to_mysql.py
│
├── sql/
│   ├── create_tables.sql
│   ├── analysis_queries.sql
│   └── retail_etl.sql
│
├── notebooks/
│
└── README.md

---

# ETL Process

## 1. Extract
- Read customer, product, and order datasets from CSV files using Pandas.

## 2. Transform
- Removed duplicate records
- Removed missing values
- Merged product and order data
- Created total_price column

## 3. Load
- Loaded cleaned data into MySQL database using SQLAlchemy and PyMySQL.

---

# Database Tables

## Customers
- customer_id
- customer_name
- city
- state

## Products
- product_id
- product_name
- category
- price

## Orders
- order_id
- customer_id
- product_id
- quantity
- total_price

---

# SQL Analysis Performed

- Total Sales Analysis
- Top Customers
- Top Selling Products
- Sales by Category
- Average Order Value

---

# Key Skills Demonstrated

- ETL Pipeline Development
- Data Cleaning
- Data Transformation
- Database Design
- SQL Analysis
- Python Automation
- MySQL Integration
- GitHub Project Management

---

# Future Improvements

- PySpark Implementation
  
---

