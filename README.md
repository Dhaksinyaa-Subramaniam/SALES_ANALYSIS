# Sales Analysis Project

This project involves a comprehensive sales analysis using the Adventure Works 2022 dataset. The analysis includes data cleaning, extraction, modeling, and visualization to provide actionable insights for the sales team.

## Table of Contents
- [Project Overview](#project-overview)
- [Tools Used](#tools-used)
- [Project Phases](#project-phases)
  - [Data Cleaning and Extraction](#data-cleaning-and-extraction)
  - [Data Modeling](#data-modeling)
  - [Dashboard Creation](#dashboard-creation)
- [Key Insights](#key-insights)

## Project Overview

The goal of this project is to perform a sales analysis using the Adventure Works 2022 dataset. The analysis aims to support the sales team by providing insights into sales performance, product mix, customer base, and geographical variations.

## Tools Used
- SQL Server Management Studio
- Power BI

## Project Phases

### Data Cleaning and Extraction
- Used SQL Server Management Studio to clean and extract relevant data.
- Focused on customer, product, and sales data.
- Ensured data quality and consistency.

### Data Modeling
- Imported cleaned data into Power BI.
- Created a star schema data model with the following tables:
  - **FactInternetSales** (central fact table)
  - **DimProduct** (product dimension)
  - **DimCustomers** (customer dimension)
  - **DimDate** (date dimension)
  - **SalesBudget** (for budget comparisons)

### Dashboard Creation
Developed three main dashboards in Power BI:

- **Sales Overview**
  - Key Performance Indicators (KPIs) comparing actual sales to budget.
  - Sales by Product Category.
  - Sales and Budget by Month (line chart).
  - Top 10 Customers by Sales.
  - Top 10 Products by Sales.
  - Geographical sales distribution.

- **Customer Details**
  - Customer-specific KPIs.
  - Sales by Product Category for selected customer(s).
  - Top 10 Customers.
  - Top 10 Products sold to customers.
  - Detailed customer sales table by month.

- **Product Details**
  - Product-specific KPIs.
  - Sales by Product Category.
  - Top 10 Customers for selected product(s).
  - Top 10 Products.
  - Detailed product sales table by month.

## Key Insights
- **Sales Performance**: Recent sales ($16,351,550) exceeded the budget ($15,300,000), showing strong short-term performance, but the overall dataset indicates a significant negative variance against the total budget.
- **Product Mix**: The Bikes category dominates sales (96.46%), while Accessories and Clothing contribute minimally.
- **Customer Base**: Top 10 customers contribute significantly to sales, with a relatively even distribution among them.
- **Product Trends**: Mountain bikes, particularly the Mountain-200 model, are the best-selling products, followed by Road-150 bikes.
- **Seasonal Patterns**: Sales peak in November and December, with noticeable dips in February and April.
- **Geographic Variations**: Sales performance varies across regions, suggesting opportunities for targeted strategies.

