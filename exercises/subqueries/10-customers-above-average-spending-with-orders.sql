/*
Exercise: Find customers whose total spending exceeds the
average total spending among customers who have placed orders.

Topics:
- Common Table Expressions (CTEs)
- INNER JOIN
- EXISTS
- Scalar subqueries
- AVG and SUM
- GROUP BY

What I learned:
A CTE can calculate total spending per customer. A scalar
subquery can calculate the average of those totals, while
EXISTS checks whether a customer has a matching order.
*/

WITH customer_spending AS(
    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(o.order_amount) AS total_spending 
    FROM customers c 
    INNER JOIN orders o 
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT * 
FROM customer_spending
WHERE total_spending > (
    SELECT 
        AVG(total_spending)
    FROM customer_spending
)
AND EXISTS(
    SELECT 1
    FROM orders o
    WHERE o.customer_id = customer_spending.customer_id
);
