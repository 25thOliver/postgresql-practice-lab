/*
Exercise: Customers spending above the average customer spending.

Topics:
- LEFT JOIN
- COALESCE and SUM
- GROUP BY and HAVING
- Derived tables and nested aggregate queries

What I learned:
Calculate total spending for every customer, including customers
with no orders, then compare each total against the average of
those customer totals.
*/

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    COALESCE(SUM(o.order_amount), 0) AS total_spending
FROM customers c 
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COALESCE(SUM(o.order_amount), 0) > (
    SELECT 
        AVG(customer_totals.total_spending)
    FROM(
        SELECT 
            c1.customer_id,
            COALESCE(SUM(o1.order_amount), 0) AS total_spending
        FROM customers c1 
        LEFT JOIN orders o1
            ON c1.customer_id = o1.customer_id
        GROUP BY c1.customer_id
        ORDER BY c1.customer_id

    ) AS customer_totals
);