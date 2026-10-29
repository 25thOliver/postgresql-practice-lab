/*
Problem: Count the number of orders in each status.

Topics: COUNT, GROUP BY, ORDER BY, DESC

What I learned:
- COUNT(*) counts all rows in each group.
- GROUP BY status creates a separate group for each status.
- ORDER BY total_orders DESC sorts from highest to lowest count.
- Column aliases can be used in ORDER BY.
*/

SELECT 
    status,
    COUNT(*) AS total_orders
FROM orders 
GROUP BY status
ORDER BY total_orders DESC;