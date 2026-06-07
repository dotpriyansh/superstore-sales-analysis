# Superstore Sales Analysis using SQL

## Overview

This project analyzes Superstore sales data using SQL. The goal is to demonstrate practical use of advanced SQL concepts including Subqueries, Common Table Expressions (CTEs), Joins, Aggregations, and Window Functions.

The dataset was imported into MySQL and transformed into normalized tables for customers, products, and orders. Various analytical queries were then performed to generate customer sales insights.

## Project Objectives

* Import and structure raw sales data
* Create normalized database tables
* Perform customer sales analysis
* Apply advanced SQL concepts
* Generate actionable business insights

## Dataset Information

| Metric        | Value |
| ------------- | ----- |
| Total Records | 9,694 |
| Customers     | 793   |
| Products      | 1,842 |
| Orders        | 9,693 |

## Database Schema

### Customers

* Customer ID
* Customer Name
* Segment

### Products

* Product ID
* Product Name
* Category
* Sub-Category

### Orders

* Order ID
* Order Date
* Ship Date
* Ship Mode
* Customer ID
* Product ID
* Sales
* Quantity
* Discount
* Profit

## SQL Concepts Demonstrated

### Subqueries

* Orders above average sales
* Highest sales order per customer

### Common Table Expressions (CTEs)

* Customer sales aggregation
* Above-average customer analysis

### Window Functions

* Customer ranking
* Row numbering
* Top customer identification

### Joins

* Customer sales reporting
* Customer performance analysis

## Assignment Tasks Completed

### Required Queries

* Orders with sales greater than average sales
* Highest sales order per customer
* Total sales per customer
* Customers with above-average sales
* Customer sales ranking
* Row numbering within customer orders
* Top 3 customers by sales

### Mini Project

* Top 5 customers
* Bottom 5 customers
* Customers with one order
* Above-average customers
* Highest order value per customer

## Tools Used

* MySQL Workbench
* SQL
* Git
* GitHub
* VS Code

## Repository Structure

```text
superstore-sales-analysis
│
├── data
├── sql
├── screenshots
├── README.md
├── insights.md
└── results.md
```

## Author

Priyansh Ahlawat

Data Engineering Internship Project
