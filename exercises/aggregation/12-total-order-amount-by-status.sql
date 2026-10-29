/*
Problem: Calculate the total order amount for each order status.

Topics: SUM, GROUP BY, ORDER BY

What I learned:
- SUM adds the order amounts within each group.
- GROUP BY status creates a separate group for each status.
- ORDER BY status sorts the results alphabetically.
- CASE is unnecessary when grouping directly by status.
*/

SELECT
    status,
    SUM(order_amount) AS total_amount
FROM orders 
GROUP BY status
ORDER BY status;