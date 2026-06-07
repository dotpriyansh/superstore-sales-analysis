/*
===========================================================
WEEK 3 ASSIGNMENT QUERIES

Topics Covered:
1. Subqueries
2. Common Table Expressions (CTEs)
3. Window Functions
4. Ranking
===========================================================
*/

-- =======================================================
-- QUERY 1
-- Find orders with sales greater than average sales
-- (SUBQUERY)
-- =======================================================

SELECT *
FROM orders
WHERE sales >
(
    SELECT AVG(sales)
    FROM orders
);


-- =======================================================
-- QUERY 2
-- Highest sales order for each customer
-- (CORRELATED SUBQUERY)
-- =======================================================

SELECT *
FROM orders o
WHERE sales =
(
    SELECT MAX(sales)
    FROM orders
    WHERE customer_id = o.customer_id
);


-- =======================================================
-- QUERY 3
-- Calculate total sales for each customer
-- (CTE)
-- =======================================================

WITH customer_sales AS
(
    SELECT
        customer_id,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY customer_id
)

SELECT *
FROM customer_sales;


-- =======================================================
-- QUERY 4
-- Customers whose total sales are above average
-- (CTE + SUBQUERY)
-- =======================================================

WITH customer_sales AS
(
    SELECT
        customer_id,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY customer_id
)

SELECT *
FROM customer_sales
WHERE total_sales >
(
    SELECT AVG(total_sales)
    FROM customer_sales
);


-- =======================================================
-- QUERY 5
-- Rank customers based on total sales
-- (WINDOW FUNCTION)
-- =======================================================

WITH customer_sales AS
(
    SELECT
        customer_id,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY customer_id
)

SELECT
    customer_id,
    total_sales,
    RANK() OVER (ORDER BY total_sales DESC) AS sales_rank
FROM customer_sales;


-- =======================================================
-- QUERY 6
-- Assign row number to orders within each customer
-- (PARTITION BY)
-- =======================================================

SELECT
    customer_id,
    order_id,
    sales,
    ROW_NUMBER() OVER
    (
        PARTITION BY customer_id
        ORDER BY sales DESC
    ) AS row_num
FROM orders;


-- =======================================================
-- QUERY 7
-- Top 3 customers based on total sales
-- (WINDOW FUNCTION)
-- =======================================================

WITH customer_sales AS
(
    SELECT
        customer_id,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY customer_id
),

ranked_customers AS
(
    SELECT
        *,
        RANK() OVER (ORDER BY total_sales DESC) AS sales_rank
    FROM customer_sales
)

SELECT *
FROM ranked_customers
WHERE sales_rank <= 3;


-- =======================================================
-- FINAL COMBINED QUERY
-- JOIN + CTE + WINDOW FUNCTION
-- =======================================================

WITH customer_sales AS
(
    SELECT
        customer_id,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY customer_id
)

SELECT
    c.customer_name,
    cs.total_sales,
    RANK() OVER
    (
        ORDER BY cs.total_sales DESC
    ) AS sales_rank
FROM customer_sales cs
JOIN customers c
ON cs.customer_id = c.customer_id;