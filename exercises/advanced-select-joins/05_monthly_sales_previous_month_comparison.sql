/*
Exercise 05: Monthly Sales and Previous Month Comparison

Objective:
Calculate monthly sales, compare each month with the
previous month, and measure the absolute and percentage change.

Concepts:
- DATE_TRUNC() for monthly grouping
- SUM() for aggregation
- CTEs for organizing query stages
- LAG() window function for previous-row comparisons
- NULLIF() to prevent division by zero
- ROUND() for percentage formatting
*/

WITH monthly_sales AS (
    SELECT
        DATE_TRUNC('month', order_date) AS sales_month,
        SUM(order_amount) AS monthly_sales
    FROM orders
    GROUP BY DATE_TRUNC('month', order_date)
),
monthly_comparison AS (
    SELECT
        sales_month,
        monthly_sales,
        LAG(monthly_sales) OVER (
            ORDER BY sales_month
        ) AS previous_month_sales
    FROM monthly_sales
)
SELECT
    sales_month,
    monthly_sales,
    previous_month_sales,
    monthly_sales - previous_month_sales AS sales_difference,
    ROUND(
        (
            (monthly_sales - previous_month_sales)
            / NULLIF(previous_month_sales, 0)
        ) * 100,
        2
    ) AS percentage_change
FROM monthly_comparison
ORDER BY sales_month;