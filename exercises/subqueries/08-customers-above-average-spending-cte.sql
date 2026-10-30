/*
Exercise: Find customers whose total spending exceeds average
customer spending.

Topics:
- Common Table Expressions (CTEs)
- LEFT JOIN
- SUM and COALESCE
- Scalar subqueries
- Aggregate comparisons

What I learned:
A CTE can calculate reusable intermediate results. Here, total
spending is calculated once per customer, then compared against
the average of all customer spending totals, including zeroes.
*/

WITH customer_spending AS(
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        COALESCE(SUM(o.order_amount), 0) AS total_spending
    FROM customers c 
    LEFT JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT * 
FROM customer_spending
WHERE total_spending >
(
    SELECT 
        AVG(total_spending)
    FROM customer_spending
);