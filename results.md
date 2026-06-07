# Results Summary

## Dataset Statistics

| Metric               | Count |
| -------------------- | ----: |
| Raw Records Imported | 9,694 |
| Customers            |   793 |
| Products             | 1,842 |
| Orders               | 9,693 |

---

## Top 5 Customers by Total Sales

| Rank | Customer Name | Total Sales ($) |
| ---- | ------------- | --------------: |
| 1    | Sean Miller   |       25,043.05 |
| 2    | Tamara Chand  |       19,017.85 |
| 3    | Raymond Buch  |       15,117.34 |
| 4    | Tom Ashbrook  |       14,595.62 |
| 5    | Adrian Barton |       14,355.61 |

### Observation

The top-performing customer, Sean Miller, generated over $25,000 in sales. The top five customers contributed significantly more revenue than the average customer, indicating the presence of a high-value customer segment.

---

## Bottom 5 Customers by Total Sales

| Customer Name   | Total Sales ($) |
| --------------- | --------------: |
| Thais Sissman   |            4.83 |
| Lela Donovan    |            5.30 |
| Mitch Gastineau |           12.32 |
| Carl Jackson    |           16.52 |
| Roy Skaria      |           22.33 |

### Observation

The gap between the highest customer sales ($25,043.05) and the lowest customer sales ($4.83) highlights a highly uneven customer spending distribution.

---

## Customers With Only One Order

### Total Customers

12 customers placed only one order.

### Customers

* Anemone Ratner
* Anthony O'Donnell
* Carl Jackson
* Jenna Caffey
* Jocasta Rupert
* Lela Donovan
* Mitch Gastineau
* Patricia Hirasaki
* Ricardo Emerson
* Roland Murray
* Susan MacKendrick
* Theresa Coyne

### Observation

These customers represent potential opportunities for customer retention and repeat-purchase campaigns.

---

## SQL Techniques Applied

### Subqueries

* Orders with sales greater than average sales
* Highest sales order per customer
* Above-average customer identification

### Common Table Expressions (CTEs)

* Customer sales aggregation
* Customer segmentation
* Customer ranking preparation

### Window Functions

* Customer sales ranking
* Row numbering within customer partitions
* Top customer identification

### Joins

* Customer and order analysis
* Customer sales reporting
* Customer ranking analysis

---

## Assignment Queries Completed

### Required Queries

1. Find orders where sales are greater than average sales
2. Find the highest sales order for each customer
3. Calculate total sales for each customer
4. Find customers whose total sales are above average
5. Rank customers based on total sales
6. Assign row numbers to each order within a customer
7. Display top 3 customers based on total sales

### Final Combined Query

Implemented a query using:

* JOIN
* Common Table Expression (CTE)
* Window Function (RANK)

to generate customer sales rankings.

---

## Key Findings

### Customer Concentration

Revenue is concentrated among a relatively small group of customers. High-value customers contribute significantly more sales than the majority of customers.

### Sales Distribution

Customer spending varies dramatically, ranging from $4.83 to over $25,000 in total sales.

### Customer Segmentation

Window functions enabled customer ranking and segmentation based on total sales performance.

### Repeat Purchasing Behavior

Most customers placed multiple orders, while only 12 customers made a single purchase.

---

## Project Outcome

Successfully imported, transformed, and analyzed the Superstore dataset using SQL.

The project demonstrates practical applications of:

* Data normalization
* Data transformation
* Aggregation
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* Analytical SQL reporting

The final output provides customer-level business insights and showcases SQL techniques commonly used in Data Engineering and Data Analytics workflows.
